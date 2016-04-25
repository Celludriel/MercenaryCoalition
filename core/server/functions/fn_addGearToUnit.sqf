/*
	_gearSelection format

	CHANCE_FOR_SELECTION 0 to 100 lowest to highest, add item with value 100 to give it for certain

	[
		UNIFORM,
		[[VESTS, [[ITEMS, AMOUNT, CHANCE_FOR_SELECTION], CHANCE_FOR_SELECTION], ...],
		[[BACKPACKS, [[ITEMS, AMOUNT, CHANCE_FOR_SELECTION], ...], CHANCE_FOR_SELECTION], ...],
		[[WEAPONS, AMMO_TYPE, [[OPTICS, CHANCE_FOR_SELECTION], ...], CHANCE_FOR_SELECTION], ...]
	]
*/
if (!isDedicated) exitWith {};

params ["_unit", "_gearSelection"];
private ["_possibleVests", "_possibleBackpacks", "_possiblePrimaryWeapons", "_possibleOptics", "_possibleSecondaryWeapons", "_possibleItems", "_selectionChance", "_roll", "_amount"];

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

// Pick uniform
_unit forceAddUniform (_gearSelection select 0);

// Pick vest
_roll = (floor random [0,100,0]) + 1;
_possibleVests = _gearSelection select 1;
{
	_selectionChance = _x select 2;
	if(_selectionChance >= _roll || _selectionChance == 100) exitWith {
		_unit addVest (_x select 0);

		// Add items to vest
		_roll = (floor random [0,100,0]) + 1;
		_possibleItems = _x select 1;
		{
			_selectionChance = _x select 2;
			if(_selectionChance >= _roll || _selectionChance == 100) exitWith {
				_amount = _x select 1;
				for "_i" from 1 to _amount do {
					_unit addItemToVest (_x select 0);
				};
			};
		} forEach _possibleItems;
	};
} forEach _possibleVests;

// Pick backpack and items
_roll = (floor random [0,100,0]) + 1;
_possibleBackpacks = _gearSelection select 2;
{
	_selectionChance = _x select 2;
	if(_selectionChance >= _roll || _selectionChance == 100) exitWith {
		_unit addBackpack (_x select 0);

		// Add items to backpack
		_roll = (floor random [0,100,0]) + 1;
		_possibleItems = _x select 1;
		{
			_selectionChance = _x select 2;
			if(_selectionChance >= _roll || _selectionChance == 100) exitWith {
				_amount = _x select 1;
				for "_i" from 1 to _amount do {
					_unit addItemToBackpack (_x select 0);
				};
			};
		} forEach _possibleItems;
	};
} forEach _possibleBackpacks;

// Pick weapons
_roll = (floor random [0,100,0]) + 1;
_possibleWeapons = _gearSelection select 3;
{
	_selectionChance = _x select 3;
	if(_selectionChance >= _roll || _selectionChance == 100) exitWith {
		for "_i" from 1 to 7 do {
			_unit addItemToUniform (_x select 1);
		};
		_unit addWeapon (_x select 0);

		_roll = (floor random [0,100,0]) + 1;
		_possibleOptics = _x select 2;
		{
			_selectionChance = _x select 1;
			if(_selectionChance >= _roll || _selectionChance == 100) exitWith {
				_unit addPrimaryWeaponItem (_x select 0);
			};
		} forEach _possibleOptics;

		if(primaryWeapon _unit != "") then {
			_roll = (floor random 100) + 1;
			if(_roll <= 50) then {
				_unit addPrimaryWeaponItem "muzzle_snds_M";
			};

			_roll = (floor random 100) + 1;
			if(_roll <= 50) then {
				_unit addPrimaryWeaponItem "acc_flashlight";
			};

			_roll = (floor random 100) + 1;
			if(_roll <= 50) then {
				_unit addPrimaryWeaponItem "bipod_02_F_blk";
			};
		};
	};
} forEach _possibleWeapons;
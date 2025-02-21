permissionset 50100 Superhero
{
    Assignable = true;
    Permissions = tabledata Superhero = RIMD,
        tabledata Weapon = RIMD,
        tabledata Writer = RIMD,
        tabledata "Superhero Weapon" = RIMD,
        tabledata "Superhero Setup" = RIMD,
        table Superhero = X,
        table Weapon = X,
        table Writer = X,
        table "Superhero Weapon" = X,
        table "Superhero Setup" = X,
        page SuperheroApi = X,
        page SuperheroCard = X,
        page SuperheroFactbox = X,
        page SuperheroesList = X,
        page WeaponApi = X,
        page WeaponsList = X,
        page WriterApi = X,
        page "Superhero Setup" = X,
        page "Superhero Weapon Subform" = X,
        page SuperheroWeaponsApi = X,
        page WritersList = X;
}
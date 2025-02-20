permissionset 50100 Superhero
{
    Assignable = true;
    Permissions = tabledata Superhero = RIMD,
        tabledata Weapon = RIMD,
        tabledata Writer = RIMD,
        table Superhero = X,
        table Weapon = X,
        table Writer = X,
        page SuperheroApi = X,
        page SuperheroCard = X,
        page SuperheroFactbox = X,
        page SuperheroesList = X,
        page WeaponApi = X,
        page WeaponsList = X,
        page WriterApi = X,
        page WritersList = X;
}
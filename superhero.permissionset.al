permissionset 50100 Superhero
{
    Assignable = true;
    Permissions = tabledata Superhero = RIMD,
        tabledata SuperheroLine = RIMD,
        tabledata Superpower = RIMD,
        tabledata Weapon = RIMD,
        table Superhero = X,
        table SuperheroLine = X,
        table Superpower = X,
        table Weapon = X,
        page "Superhero Subpage" = X,
        page SuperheroApi = X,
        page SuperheroCard = X,
        page SuperheroFactbox = X,
        page SuperheroLineApi = X,
        page SuperheroesList = X,
        page SuperpowerApi = X,
        page SuperpowersList = X,
        page WeaponApi = X,
        page WeaponsList = X;
}
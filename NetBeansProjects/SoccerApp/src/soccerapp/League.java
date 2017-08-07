package soccerapp;

public class League {

    public static void main(String[] args) {
        GoalClass teamScore = new GoalClass();
        TeamClass green = new TeamClass();
        TeamClass red = new TeamClass();
        /////////////////////////////////////    
        PlayerClass[] g = new PlayerClass[3];
        PlayerClass[] r = new PlayerClass[3];
        String[] namesRed = {"Harry", "Jorg", "George"};
        String[] names = {"Bla", "Woo", "Jaja"};

        for (int i = 0; i < g.length; i++) {
            g[i] = new PlayerClass();
        }
        for (int n = 0; n < r.length; n++) {
            r[n] = new PlayerClass();
        }
        for (int i = 0; i < g.length; i++) {
            g[i].name = names[i];
        }
        for (int j = 0; j < g.length; j++) {
            r[j].name = namesRed[j];
        }
        /////////////////////////////////////
        green.teamName = "Greens: ";
        System.out.println(green.teamName);
        System.out.println(" ");

        for (PlayerClass a2 : g) {
            System.out.println(a2.name);
        }
        System.out.println(" ");
        System.out.println(" ");

        red.teamName = "Reds: ";
        System.out.println(red.teamName);
        System.out.println(" ");

        for (PlayerClass a2 : r) {
            System.out.println(a2.name);
        }

        System.out.println(" ");

        teamScore.timeScored = 25.00;
        teamScore.teamScored = "Reds";
        teamScore.namePlayerScored = r[0].name;

        System.out.println("Goal scored after: " + teamScore.timeScored + " minutes" + " " + "by: " + teamScore.namePlayerScored + " " + "team: " + teamScore.teamScored);
    }
}

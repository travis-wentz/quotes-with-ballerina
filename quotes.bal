import ballerina/http;
import ballerina/math;

service quotes on new http:Listener(9090) {

    resource function hello(http:Caller caller, http:Request request) returns error? {
        check caller->respond("\nhello world");
    }

    resource function firefly(http:Caller caller, http:Request request) returns error? {
        // check caller->respond("\nNo power in the 'verse can stop me.");
        string[] collection = [
            "No power in the 'verse can stop me.",
            "You can't take the sky from me.",
            "Well, my time of not taking you seriously is coming to a middle.",
            "Let's go be bad guys!",
            "Curse your sudden but inevitable betrayal!",
            "I swear by my pretty floral bonnet, I will end you.",
            "Terse? I can be terse. Once, in flight school, I was laconic.",
            "I cannot abide useless people.",
            "Next time you want to stab me in the back, have the guts to do it to my face.",
            "Man walks down the street in a hat like that, you know he's not afraid of anything.",
            "I've been under fire before. Well... I've been in a fire. Actually, I was fired; from a fry-cook opportunity. I can handle myself.",
            "When you can't run, you crawl. And when you can't crawl, when you can't do that ...\n... you find someone to carry you.",
            "I'm a leaf on the wind,\nWatch how I soar."
        ];
        var chosenQuote = collection[check math:randomInRange(0,collection.length())];
        check caller->respond("\n" + chosenQuote);
    }
    
    resource function lotr(http:Caller caller, http:Request request) returns error? {
        string[] collection = [
            "It's a dangerous business, Frodo, going out your door. You step onto the road, and if you don't keep your feet, there's no knowing where you might be swept off to.",
            "Even the smallest person can change the course of the future.",
            "One Ring to rule them all, One Ring to find them,\nOne Ring to bring them all, and in the darkness bind them",
            "Three Rings for the Elven-kings under the sky,\nSeven for the Dwarf-lords in their halls of stone,\nNine for Mortal Men doomed to die,\nOne for the Dark Lord on his dark throne\nIn the Land of Mordor where the Shadows lie.\nOne Ring to rule them all, One Ring to find them,\nOne Ring to bring them all, and in the darkness bind them,\nIn the Land of Mordor where the Shadows lie.",
            "Home is behind, the world ahead,\nand there are many paths to tread\nthrough shadows to the edge of night,\nuntil the stars are all alight.",
            "All that is gold does not glitter,\nNot all those who wander are lost;\nThe old that is strong does not wither,\nDeep roots are not reached by the frost.\n\nFrom the ashes a fire shall be woken,\nA light from the shadows shall spring;\nRenewed shall be blade that was broken,\nThe crownless again shall be king.",
            "Still round the corner there may wait\nA new road or a secret gate\nAnd though I oft have passed them by\nA day will come at last when I\nShall take the hidden paths that run\nWest of the Moon, East of the Sun."
        ];
        var chosenQuote = collection[check math:randomInRange(0,collection.length())];
        check caller->respond("\n" + chosenQuote);
    }

}
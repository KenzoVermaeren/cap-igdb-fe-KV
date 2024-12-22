sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'gamesappkv/test/integration/FirstJourney',
		'gamesappkv/test/integration/pages/StudentList',
		'gamesappkv/test/integration/pages/StudentObjectPage',
		'gamesappkv/test/integration/pages/FavoriteGameObjectPage'
    ],
    function(JourneyRunner, opaJourney, StudentList, StudentObjectPage, FavoriteGameObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('gamesappkv') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStudentList: StudentList,
					onTheStudentObjectPage: StudentObjectPage,
					onTheFavoriteGameObjectPage: FavoriteGameObjectPage
                }
            },
            opaJourney.run
        );
    }
);
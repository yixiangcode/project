import 'package:flutter/material.dart';
import 'color.dart';
import 'game_helper.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  MineSweeperGame game = MineSweeperGame();

  @override
  void initState(){
    super.initState();
    game.generateMap();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text("Minesweeper"),
        actions:[
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 16.0),
                  decoration: BoxDecoration(
                    color: AppColor.lightPrimaryColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.flag,
                        color: AppColor.accentColor,
                        size: 34.0,
                      ),
                      Text(
                        "10",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 16.0),
                  decoration: BoxDecoration(
                    color: AppColor.lightPrimaryColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.timer,
                        color: AppColor.accentColor,
                        size: 34.0,
                      ),
                      Text("10:00",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            width: double.infinity,
            height: 500,
            padding: EdgeInsets.all(20.0),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MineSweeperGame.row,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                ),
                itemCount: MineSweeperGame.cells,
                itemBuilder: (BuildContext ctx, index) {
                  Color cellColor = game.gameMap[index].reveal
                      ? AppColor.clickedCard
                      : AppColor.lightPrimaryColor;
                  return GestureDetector(
                    onTap: game.gameOver
                  ? null :(){
                      setState(() {
                        game.getClickedCell(game.gameMap[index]);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: cellColor,
                        borderRadius: BorderRadius.circular(6.0)),
                      child: Center(
                          child: Text(
                            game.gameMap[index].reveal
                            ?"${game.gameMap[index].content}"
                            :"",
                        style: TextStyle(
                          color : game.gameMap[index].reveal
                              ? game.gameMap[index].content == "X"
                              ? Colors.red
                              : AppColor.letterColors[game.gameMap[index].content]
                              :Colors.transparent,
                          fontSize: 20.0,
                        ),
                      )),
                    ),
                  );
                }),
          ),
          Text(
            game.gameOver ? "You Lose" : "",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32.0),
            ),
          SizedBox(
          height:20.0,
          ),
          RawMaterialButton(
            onPressed: () {
              setState(() {
              game.resetGame();
              game.gameOver = false;
            });
          },
          fillColor: AppColor.lightPrimaryColor,
          elevation: 0,
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(horizontal: 64.0,vertical: 18.0),
          child: Text("Repeat",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
          ),
          ),
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
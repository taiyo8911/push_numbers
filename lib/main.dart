import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_practice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '順番早押しゲーム'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List _numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]; //表示する数字の配列
  var _count = 1; //判定用
  List _active =[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]; //判定用
  var _correctIndex;
  var _pushIndex;

  //スタートボタンが押されたら数字をシャッフルする
  void _shuffle() {
    setState(() {
      _numbers.shuffle();
      _active =[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
    });
    _count = 1;
  }

  //数字ボタンが押されるたびに、判定する。
  pushIndex(pushIndex, active) {
    _pushIndex = pushIndex;
    _active[_pushIndex] = active;
    _correctIndex = _numbers.indexOf(_count); //ボタンが押されるたびに、正解のインデックスを取得する
    if (_correctIndex == _pushIndex) {
      setState(() {
        _active[_pushIndex] = 1; //正解なら、文字の色を変える
      });
      _count++; //正解の数字に1を加える
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '1から順に数字をタップしていく早押しゲーム。\nスタートボタンを押してゲームスタート！',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Row(children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(0, 0);
                          },
                          child: Text(
                            '${_numbers[0]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[0]==0 ? Colors.black : Colors.grey, //_activeが0なら文字色を黒に、1ならグレーにする。
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(1, 0);
                          },
                          child: Text(
                            '${_numbers[1]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[1]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(2, 0);
                          },
                          child: Text(
                            '${_numbers[2]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[2]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(3, 0);
                          },
                          child: Text(
                            '${_numbers[3]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[3]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(4, 0);
                          },
                          child: Text(
                            '${_numbers[4]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[4]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Expanded(
                  child: Row(children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(5, 0);
                          },
                          child: Text(
                            '${_numbers[5]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[5]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(6, 0);
                          },
                          child: Text(
                            '${_numbers[6]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[6]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(7, 0);
                          },
                          child: Text(
                            '${_numbers[7]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[7]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(8, 0);
                          },
                          child: Text(
                            '${_numbers[8]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[8]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(9, 0);
                          },
                          child: Text(
                            '${_numbers[9]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[9]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Expanded(
                  child: Row(children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(10, 0);
                          },
                          child: Text(
                            '${_numbers[10]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[10]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(11, 0);
                          },
                          child: Text(
                            '${_numbers[11]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[11]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(12, 0);
                          },
                          child: Text(
                            '${_numbers[12]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[12]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(13, 0);
                          },
                          child: Text(
                            '${_numbers[13]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[13]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(14, 0);
                          },
                          child: Text(
                            '${_numbers[14]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[14]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Expanded(
                  child: Row(children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(15, 0);
                          },
                          child: Text(
                            '${_numbers[15]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[15]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(16, 0);
                          },
                          child: Text(
                            '${_numbers[16]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[16]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(17, 0);
                          },
                          child: Text(
                            '${_numbers[17]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[17]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(18, 0);
                          },
                          child: Text(
                            '${_numbers[18]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[18]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(19, 0);
                          },
                          child: Text(
                            '${_numbers[19]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[19]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Expanded(
                  child: Row(children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(20, 0);
                          },
                          child: Text(
                            '${_numbers[20]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[20]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(21, 0);
                          },
                          child: Text(
                            '${_numbers[21]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[21]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(22, 0);
                          },
                          child: Text(
                            '${_numbers[22]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[22]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(23, 0);
                          },
                          child: Text(
                            '${_numbers[23]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[23]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: RaisedButton(
                          onPressed: () {
                            pushIndex(24, 0);
                          },
                          child: Text(
                            '${_numbers[24]}',
                            style: TextStyle(
                              fontSize: 30,
                              color: _active[24]==0 ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              color: Colors.green,
              onPressed: _shuffle,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'スタート',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
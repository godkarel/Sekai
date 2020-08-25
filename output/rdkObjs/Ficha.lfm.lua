require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmsekai()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setFormType("sheetTemplate");
    obj:setDataType("com.Sekai");
    obj:setTitle("Sekai 2");
    obj:setName("frmsekai");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj.scrollBox1);
    obj.tabControl1:setLeft(10);
    obj.tabControl1:setTop(10);
    obj.tabControl1:setWidth(1000);
    obj.tabControl1:setHeight(700);
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Status");
    obj.tab1:setName("tab1");

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.tab1);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.scrollBox2);
    obj.image1:setLeft(1);
    obj.image1:setTop(1);
    obj.image1:setWidth(1000);
    obj.image1:setHeight(700);
    obj.image1:setSRC("/imagens/1.png");
    obj.image1:setName("image1");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.scrollBox2);
    obj.button1:setLeft(40);
    obj.button1:setTop(420);
    obj.button1:setText("Ataque Tai");
    obj.button1:setWidth(100);
    obj.button1:setName("button1");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.scrollBox2);
    obj.button2:setLeft(250);
    obj.button2:setTop(420);
    obj.button2:setText("Esquiva");
    obj.button2:setWidth(100);
    obj.button2:setName("button2");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.scrollBox2);
    obj.button3:setLeft(40);
    obj.button3:setTop(448);
    obj.button3:setWidth(100);
    obj.button3:setHeight(85);
    obj.button3:setOpacity(0.1);
    obj.button3:setText("");
    obj.button3:setName("button3");

    obj.POPJutsu = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPJutsu:setParent(obj.scrollBox2);
    obj.POPJutsu:setName("POPJutsu");
    obj.POPJutsu:setVisible(false);
    obj.POPJutsu:setLeft(1);
    obj.POPJutsu:setTop(40);
    obj.POPJutsu:setWidth(900);
    obj.POPJutsu:setHeight(600);

    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.POPJutsu);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.scrollBox3);
    obj.image2:setTop(1);
    obj.image2:setWidth(870);
    obj.image2:setHeight(705);
    obj.image2:setSRC("/imagens/5.png");
    obj.image2:setName("image2");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.scrollBox3);
    obj.button4:setText("Novo Jutsu");
    obj.button4:setWidth(125);
    obj.button4:setHeight(40);
    obj.button4:setLeft(70);
    obj.button4:setTop(10);
    obj.button4:setName("button4");

    obj.rclListaDosItens1 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosItens1:setParent(obj.scrollBox3);
    obj.rclListaDosItens1:setName("rclListaDosItens1");
    obj.rclListaDosItens1:setField("Jutsus");
    obj.rclListaDosItens1:setTemplateForm("frmItemDaLista1");
    obj.rclListaDosItens1:setWidth(880);
    obj.rclListaDosItens1:setHeight(570);
    obj.rclListaDosItens1:setLeft(10);
    obj.rclListaDosItens1:setTop(60);
    obj.rclListaDosItens1:setSelectable(true);

    obj.ListaJutsus = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.ListaJutsus:setParent(obj.scrollBox3);
    obj.ListaJutsus:setName("ListaJutsus");
    obj.ListaJutsus:setVisible(false);
    obj.ListaJutsus:setWidth(480);
    obj.ListaJutsus:setHeight(580);
    obj.ListaJutsus:setLeft(400);
    obj.ListaJutsus:setTop(60);

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.ListaJutsus);
    obj.rectangle1:setColor("black");
    obj.rectangle1:setXradius(10);
    obj.rectangle1:setYradius(10);
    obj.rectangle1:setWidth(460);
    obj.rectangle1:setHeight(560);
    obj.rectangle1:setLeft(1);
    obj.rectangle1:setTop(1);
    obj.rectangle1:setName("rectangle1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.rectangle1);
    obj.label1:setWidth(120);
    obj.label1:setHeight(40);
    obj.label1:setLeft(10);
    obj.label1:setTop(10);
    obj.label1:setFontFamily("Nyala");
    obj.label1:setFontSize(20);
    obj.label1:setText("Nome do Jutsu:");
    obj.label1:setName("label1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.rectangle1);
    obj.edit1:setWidth(310);
    obj.edit1:setHeight(30);
    obj.edit1:setLeft(130);
    obj.edit1:setTop(15);
    obj.edit1:setField("NomedoJutsu");
    obj.edit1:setName("edit1");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.rectangle1);
    obj.textEditor1:setLeft(10);
    obj.textEditor1:setTop(60);
    obj.textEditor1:setWidth(430);
    obj.textEditor1:setHeight(280);
    obj.textEditor1:setField("DescriJutsu");
    obj.textEditor1:setText("Este é um textEditor\n\ncom multiplas linhas");
    obj.textEditor1:setName("textEditor1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.rectangle1);
    obj.label2:setWidth(120);
    obj.label2:setHeight(40);
    obj.label2:setLeft(10);
    obj.label2:setTop(350);
    obj.label2:setFontFamily("Nyala");
    obj.label2:setFontSize(20);
    obj.label2:setText("Dano");
    obj.label2:setName("label2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.rectangle1);
    obj.edit2:setWidth(80);
    obj.edit2:setHeight(30);
    obj.edit2:setLeft(55);
    obj.edit2:setTop(355);
    obj.edit2:setType("number");
    obj.edit2:setField("DanoJutsu");
    obj.edit2:setName("edit2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.rectangle1);
    obj.label3:setWidth(60);
    obj.label3:setHeight(40);
    obj.label3:setLeft(340);
    obj.label3:setTop(350);
    obj.label3:setFontFamily("Nyala");
    obj.label3:setFontSize(20);
    obj.label3:setFontColor("cyan");
    obj.label3:setText("Chakra");
    obj.label3:setName("label3");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.rectangle1);
    obj.edit3:setWidth(40);
    obj.edit3:setHeight(30);
    obj.edit3:setLeft(400);
    obj.edit3:setTop(355);
    obj.edit3:setType("number");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setFontColor("cyan");
    obj.edit3:setField("CustoJutsu");
    obj.edit3:setName("edit3");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.rectangle1);
    obj.edit4:setWidth(40);
    obj.edit4:setHeight(30);
    obj.edit4:setLeft(390);
    obj.edit4:setTop(380);
    obj.edit4:setVisible(false);
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setFontColor("cyan");
    obj.edit4:setType("number");
    obj.edit4:setField("ChakraPlayer");
    obj.edit4:setName("edit4");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.rectangle1);
    obj.label4:setWidth(60);
    obj.label4:setHeight(40);
    obj.label4:setLeft(150);
    obj.label4:setTop(350);
    obj.label4:setFontFamily("Nyala");
    obj.label4:setFontSize(20);
    obj.label4:setText("Tipo");
    obj.label4:setName("label4");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.rectangle1);
    obj.comboBox1:setLeft(190);
    obj.comboBox1:setTop(363);
    obj.comboBox1:setWidth(140);
    obj.comboBox1:setHeight(18);
    obj.comboBox1:setField("Tipo");
    obj.comboBox1:setItems({'Tai', 'Nin', 'Gen', 'Elemental', 'Defensivo', 'Selamento', 'Outros','M/Tai', 'M/Nin', 'M/Gen', 'M/Elemental'});
    obj.comboBox1:setName("comboBox1");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.rectangle1);
    obj.label5:setWidth(150);
    obj.label5:setHeight(40);
    obj.label5:setLeft(10);
    obj.label5:setTop(390);
    obj.label5:setFontFamily("Nyala");
    obj.label5:setFontSize(16);
    obj.label5:setText("Dano Verdadeiro");
    obj.label5:setName("label5");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.rectangle1);
    obj.edit5:setWidth(80);
    obj.edit5:setHeight(20);
    obj.edit5:setLeft(110);
    obj.edit5:setTop(400);
    obj.edit5:setEnabled(false);
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setType("number");
    obj.edit5:setField("DNVerdadeiro");
    obj.edit5:setName("edit5");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.rectangle1);
    obj.label6:setWidth(170);
    obj.label6:setHeight(40);
    obj.label6:setLeft(280);
    obj.label6:setTop(390);
    obj.label6:setFontFamily("Nyala");
    obj.label6:setFontColor("Crimson ");
    obj.label6:setFontSize(16);
    obj.label6:setText("Intensidade");
    obj.label6:setName("label6");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.rectangle1);
    obj.edit6:setWidth(80);
    obj.edit6:setHeight(20);
    obj.edit6:setLeft(350);
    obj.edit6:setTop(400);
    obj.edit6:setEnabled(false);
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setType("number");
    obj.edit6:setFontColor("Crimson");
    obj.edit6:setField("Intensidade");
    obj.edit6:setName("edit6");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.rectangle1);
    obj.label7:setWidth(70);
    obj.label7:setHeight(40);
    obj.label7:setLeft(195);
    obj.label7:setTop(390);
    obj.label7:setFontFamily("Nyala");
    obj.label7:setFontSize(16);
    obj.label7:setText("Level");
    obj.label7:setName("label7");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.rectangle1);
    obj.edit7:setWidth(30);
    obj.edit7:setHeight(20);
    obj.edit7:setLeft(230);
    obj.edit7:setTop(400);
    obj.edit7:setEnabled(true);
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setType("number");
    obj.edit7:setField("LevelJutsu1");
    obj.edit7:setName("edit7");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.rectangle1);
    obj.label8:setWidth(230);
    obj.label8:setHeight(40);
    obj.label8:setLeft(180);
    obj.label8:setTop(450);
    obj.label8:setFontFamily("Nyala");
    obj.label8:setFontSize(18);
    obj.label8:setText("Fortificação de jutsu 3D10 e 1d20");
    obj.label8:setName("label8");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.rectangle1);
    obj.edit8:setWidth(50);
    obj.edit8:setHeight(30);
    obj.edit8:setLeft(180);
    obj.edit8:setTop(500);
    obj.edit8:setType("number");
    obj.edit8:setMin(1);
    obj.edit8:setMax(9);
    obj.edit8:setEnabled(false);
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setField("1d10");
    obj.edit8:setName("edit8");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.rectangle1);
    obj.edit9:setWidth(50);
    obj.edit9:setHeight(30);
    obj.edit9:setLeft(240);
    obj.edit9:setTop(500);
    obj.edit9:setType("number");
    obj.edit9:setMin(1);
    obj.edit9:setMax(9);
    obj.edit9:setEnabled(false);
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setField("2d10");
    obj.edit9:setName("edit9");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.rectangle1);
    obj.edit10:setWidth(50);
    obj.edit10:setHeight(30);
    obj.edit10:setLeft(300);
    obj.edit10:setTop(500);
    obj.edit10:setType("number");
    obj.edit10:setMin(1);
    obj.edit10:setMax(9);
    obj.edit10:setEnabled(false);
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setField("3d10");
    obj.edit10:setName("edit10");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.rectangle1);
    obj.rectangle2:setWidth(50);
    obj.rectangle2:setHeight(30);
    obj.rectangle2:setLeft(360);
    obj.rectangle2:setTop(500);
    obj.rectangle2:setColor("black");
    obj.rectangle2:setStrokeColor("red");
    obj.rectangle2:setStrokeSize(3);
    obj.rectangle2:setName("rectangle2");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.rectangle1);
    obj.edit11:setWidth(50);
    obj.edit11:setHeight(30);
    obj.edit11:setLeft(360);
    obj.edit11:setTop(500);
    obj.edit11:setType("number");
    obj.edit11:setMin(1);
    obj.edit11:setMax(18);
    obj.edit11:setEnabled(false);
    obj.edit11:setTransparent(true);
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setField("1d20");
    obj.edit11:setName("edit11");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.rectangle1);
    obj.image3:setLeft(20);
    obj.image3:setTop(420);
    obj.image3:setWidth(150);
    obj.image3:setHeight(150);
    obj.image3:setSRC("/imagens/Jutsu.png");
    obj.image3:setName("image3");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.rectangle1);
    obj.button5:setLeft(20);
    obj.button5:setTop(430);
    obj.button5:setFontSize(20);
    obj.button5:setOpacity(0.0);
    obj.button5:setHeight(120);
    obj.button5:setWidth(150);
    obj.button5:setText("Usar");
    obj.button5:setFontColor("White");
    obj.button5:setName("button5");

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.scrollBox2);
    obj.button6:setLeft(145);
    obj.button6:setTop(448);
    obj.button6:setWidth(100);
    obj.button6:setHeight(85);
    obj.button6:setOpacity(0.1);
    obj.button6:setText("");
    obj.button6:setName("button6");

    obj.POPFavorito = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPFavorito:setParent(obj.scrollBox2);
    obj.POPFavorito:setName("POPFavorito");
    obj.POPFavorito:setVisible(false);
    obj.POPFavorito:setLeft(1);
    obj.POPFavorito:setTop(40);
    obj.POPFavorito:setWidth(900);
    obj.POPFavorito:setHeight(600);

    obj.scrollBox4 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.POPFavorito);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setName("scrollBox4");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.scrollBox4);
    obj.image4:setTop(1);
    obj.image4:setWidth(870);
    obj.image4:setHeight(705);
    obj.image4:setSRC("/imagens/5.png");
    obj.image4:setName("image4");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.scrollBox4);
    obj.button7:setText("Novo Jutsu");
    obj.button7:setWidth(125);
    obj.button7:setHeight(40);
    obj.button7:setLeft(70);
    obj.button7:setTop(10);
    obj.button7:setName("button7");

    obj.rclListaDosItens2 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosItens2:setParent(obj.scrollBox4);
    obj.rclListaDosItens2:setName("rclListaDosItens2");
    obj.rclListaDosItens2:setField("Jutsus2");
    obj.rclListaDosItens2:setTemplateForm("frmItemDaLista2");
    obj.rclListaDosItens2:setWidth(880);
    obj.rclListaDosItens2:setHeight(570);
    obj.rclListaDosItens2:setLeft(10);
    obj.rclListaDosItens2:setTop(60);
    obj.rclListaDosItens2:setSelectable(true);

    obj.ListaJutsus2 = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.ListaJutsus2:setParent(obj.scrollBox4);
    obj.ListaJutsus2:setName("ListaJutsus2");
    obj.ListaJutsus2:setVisible(false);
    obj.ListaJutsus2:setWidth(480);
    obj.ListaJutsus2:setHeight(580);
    obj.ListaJutsus2:setLeft(400);
    obj.ListaJutsus2:setTop(60);

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.ListaJutsus2);
    obj.rectangle3:setColor("black");
    obj.rectangle3:setXradius(10);
    obj.rectangle3:setYradius(10);
    obj.rectangle3:setWidth(460);
    obj.rectangle3:setHeight(560);
    obj.rectangle3:setLeft(1);
    obj.rectangle3:setTop(1);
    obj.rectangle3:setName("rectangle3");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.rectangle3);
    obj.label9:setWidth(120);
    obj.label9:setHeight(40);
    obj.label9:setLeft(10);
    obj.label9:setTop(10);
    obj.label9:setFontFamily("Nyala");
    obj.label9:setFontSize(20);
    obj.label9:setText("Nome do Jutsu:");
    obj.label9:setName("label9");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.rectangle3);
    obj.edit12:setWidth(310);
    obj.edit12:setHeight(30);
    obj.edit12:setLeft(130);
    obj.edit12:setTop(15);
    obj.edit12:setField("NomedoJutsu2");
    obj.edit12:setName("edit12");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.rectangle3);
    obj.textEditor2:setLeft(10);
    obj.textEditor2:setTop(60);
    obj.textEditor2:setWidth(430);
    obj.textEditor2:setHeight(280);
    obj.textEditor2:setField("DescriJutsu2");
    obj.textEditor2:setText("Este é um textEditor\n\ncom multiplas linhas");
    obj.textEditor2:setName("textEditor2");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.rectangle3);
    obj.label10:setWidth(120);
    obj.label10:setHeight(40);
    obj.label10:setLeft(10);
    obj.label10:setTop(350);
    obj.label10:setFontFamily("Nyala");
    obj.label10:setFontSize(20);
    obj.label10:setText("Dano");
    obj.label10:setName("label10");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.rectangle3);
    obj.edit13:setWidth(80);
    obj.edit13:setHeight(30);
    obj.edit13:setLeft(55);
    obj.edit13:setTop(355);
    obj.edit13:setType("number");
    obj.edit13:setField("DanoJutsu2");
    obj.edit13:setName("edit13");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.rectangle3);
    obj.label11:setWidth(60);
    obj.label11:setHeight(40);
    obj.label11:setLeft(340);
    obj.label11:setTop(350);
    obj.label11:setFontFamily("Nyala");
    obj.label11:setFontSize(20);
    obj.label11:setFontColor("cyan");
    obj.label11:setText("Chakra");
    obj.label11:setName("label11");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.rectangle3);
    obj.edit14:setWidth(40);
    obj.edit14:setHeight(30);
    obj.edit14:setLeft(400);
    obj.edit14:setTop(355);
    obj.edit14:setType("number");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setFontColor("cyan");
    obj.edit14:setField("CustoJutsu2");
    obj.edit14:setName("edit14");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.rectangle3);
    obj.edit15:setWidth(40);
    obj.edit15:setHeight(30);
    obj.edit15:setLeft(390);
    obj.edit15:setTop(380);
    obj.edit15:setVisible(false);
    obj.edit15:setType("number");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setFontColor("cyan");
    obj.edit15:setField("ChakraPlayer2");
    obj.edit15:setName("edit15");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.rectangle3);
    obj.label12:setWidth(60);
    obj.label12:setHeight(40);
    obj.label12:setLeft(150);
    obj.label12:setTop(350);
    obj.label12:setFontFamily("Nyala");
    obj.label12:setFontSize(20);
    obj.label12:setText("Tipo");
    obj.label12:setName("label12");

    obj.comboBox2 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox2:setParent(obj.rectangle3);
    obj.comboBox2:setLeft(190);
    obj.comboBox2:setTop(363);
    obj.comboBox2:setWidth(140);
    obj.comboBox2:setHeight(18);
    obj.comboBox2:setField("Tipo2");
    obj.comboBox2:setItems({'Tai', 'Nin', 'Gen', 'Elemental', 'Defensivo', 'Selamento', 'Outros', 'M/Tai', 'M/Nin', 'M/Gen', 'M/Elemental'});
    obj.comboBox2:setName("comboBox2");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.rectangle3);
    obj.label13:setWidth(150);
    obj.label13:setHeight(40);
    obj.label13:setLeft(10);
    obj.label13:setTop(390);
    obj.label13:setFontFamily("Nyala");
    obj.label13:setFontSize(16);
    obj.label13:setText("Dano Verdadeiro");
    obj.label13:setName("label13");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.rectangle3);
    obj.edit16:setWidth(80);
    obj.edit16:setHeight(20);
    obj.edit16:setLeft(110);
    obj.edit16:setTop(400);
    obj.edit16:setEnabled(false);
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setType("number");
    obj.edit16:setField("DNVerdadeiro2");
    obj.edit16:setName("edit16");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.rectangle3);
    obj.label14:setWidth(170);
    obj.label14:setHeight(40);
    obj.label14:setLeft(280);
    obj.label14:setTop(390);
    obj.label14:setFontFamily("Nyala");
    obj.label14:setFontColor("Crimson ");
    obj.label14:setFontSize(16);
    obj.label14:setText("Intensidade");
    obj.label14:setName("label14");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.rectangle3);
    obj.edit17:setWidth(80);
    obj.edit17:setHeight(20);
    obj.edit17:setLeft(350);
    obj.edit17:setTop(400);
    obj.edit17:setEnabled(false);
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setType("number");
    obj.edit17:setFontColor("Crimson");
    obj.edit17:setField("Intensidade2");
    obj.edit17:setName("edit17");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.rectangle3);
    obj.label15:setWidth(70);
    obj.label15:setHeight(40);
    obj.label15:setLeft(195);
    obj.label15:setTop(390);
    obj.label15:setFontFamily("Nyala");
    obj.label15:setFontSize(16);
    obj.label15:setText("Level");
    obj.label15:setName("label15");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.rectangle3);
    obj.edit18:setWidth(30);
    obj.edit18:setHeight(20);
    obj.edit18:setLeft(230);
    obj.edit18:setTop(400);
    obj.edit18:setEnabled(true);
    obj.edit18:setType("number");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setField("LevelJutsu2");
    obj.edit18:setName("edit18");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.rectangle3);
    obj.label16:setWidth(230);
    obj.label16:setHeight(40);
    obj.label16:setLeft(180);
    obj.label16:setTop(450);
    obj.label16:setFontFamily("Nyala");
    obj.label16:setFontSize(18);
    obj.label16:setText("Fortificação de jutsu 3D10 e 1d20");
    obj.label16:setName("label16");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.rectangle3);
    obj.edit19:setWidth(50);
    obj.edit19:setHeight(30);
    obj.edit19:setLeft(180);
    obj.edit19:setTop(500);
    obj.edit19:setType("number");
    obj.edit19:setMin(1);
    obj.edit19:setMax(9);
    obj.edit19:setEnabled(false);
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setField("21d10");
    obj.edit19:setName("edit19");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.rectangle3);
    obj.edit20:setWidth(50);
    obj.edit20:setHeight(30);
    obj.edit20:setLeft(240);
    obj.edit20:setTop(500);
    obj.edit20:setType("number");
    obj.edit20:setMin(1);
    obj.edit20:setMax(9);
    obj.edit20:setEnabled(false);
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setField("22d10");
    obj.edit20:setName("edit20");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.rectangle3);
    obj.edit21:setWidth(50);
    obj.edit21:setHeight(30);
    obj.edit21:setLeft(300);
    obj.edit21:setTop(500);
    obj.edit21:setType("number");
    obj.edit21:setMin(1);
    obj.edit21:setMax(9);
    obj.edit21:setEnabled(false);
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setField("23d10");
    obj.edit21:setName("edit21");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.rectangle3);
    obj.rectangle4:setWidth(50);
    obj.rectangle4:setHeight(30);
    obj.rectangle4:setLeft(360);
    obj.rectangle4:setTop(500);
    obj.rectangle4:setColor("black");
    obj.rectangle4:setStrokeColor("red");
    obj.rectangle4:setStrokeSize(3);
    obj.rectangle4:setName("rectangle4");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.rectangle3);
    obj.edit22:setWidth(50);
    obj.edit22:setHeight(30);
    obj.edit22:setLeft(360);
    obj.edit22:setTop(500);
    obj.edit22:setType("number");
    obj.edit22:setMin(1);
    obj.edit22:setMax(18);
    obj.edit22:setEnabled(false);
    obj.edit22:setTransparent(true);
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setField("21d20");
    obj.edit22:setName("edit22");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.rectangle3);
    obj.image5:setLeft(20);
    obj.image5:setTop(420);
    obj.image5:setWidth(150);
    obj.image5:setHeight(150);
    obj.image5:setSRC("/imagens/Jutsu.png");
    obj.image5:setName("image5");

    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.rectangle3);
    obj.button8:setLeft(20);
    obj.button8:setTop(430);
    obj.button8:setFontSize(20);
    obj.button8:setOpacity(0.0);
    obj.button8:setHeight(120);
    obj.button8:setWidth(150);
    obj.button8:setText("Usar");
    obj.button8:setFontColor("White");
    obj.button8:setName("button8");

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.scrollBox2);
    obj.button9:setLeft(250);
    obj.button9:setTop(448);
    obj.button9:setWidth(100);
    obj.button9:setHeight(85);
    obj.button9:setOpacity(0.1);
    obj.button9:setText("");
    obj.button9:setName("button9");

    obj.POPKekegenkai = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPKekegenkai:setParent(obj.scrollBox2);
    obj.POPKekegenkai:setName("POPKekegenkai");
    obj.POPKekegenkai:setVisible(false);
    obj.POPKekegenkai:setLeft(1);
    obj.POPKekegenkai:setTop(40);
    obj.POPKekegenkai:setWidth(900);
    obj.POPKekegenkai:setHeight(600);

    obj.scrollBox5 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox5:setParent(obj.POPKekegenkai);
    obj.scrollBox5:setAlign("client");
    obj.scrollBox5:setName("scrollBox5");

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.scrollBox5);
    obj.image6:setTop(1);
    obj.image6:setWidth(870);
    obj.image6:setHeight(705);
    obj.image6:setSRC("/imagens/5.png");
    obj.image6:setName("image6");

    obj.button10 = GUI.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.scrollBox5);
    obj.button10:setText("Novo Jutsu");
    obj.button10:setWidth(125);
    obj.button10:setHeight(40);
    obj.button10:setLeft(70);
    obj.button10:setTop(10);
    obj.button10:setName("button10");

    obj.rclListaDosItens3 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosItens3:setParent(obj.scrollBox5);
    obj.rclListaDosItens3:setName("rclListaDosItens3");
    obj.rclListaDosItens3:setField("Jutsus3");
    obj.rclListaDosItens3:setTemplateForm("frmItemDaLista3");
    obj.rclListaDosItens3:setWidth(880);
    obj.rclListaDosItens3:setHeight(570);
    obj.rclListaDosItens3:setLeft(10);
    obj.rclListaDosItens3:setTop(60);
    obj.rclListaDosItens3:setSelectable(true);

    obj.ListaJutsus3 = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.ListaJutsus3:setParent(obj.scrollBox5);
    obj.ListaJutsus3:setName("ListaJutsus3");
    obj.ListaJutsus3:setVisible(false);
    obj.ListaJutsus3:setWidth(480);
    obj.ListaJutsus3:setHeight(580);
    obj.ListaJutsus3:setLeft(400);
    obj.ListaJutsus3:setTop(60);

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.ListaJutsus3);
    obj.rectangle5:setColor("black");
    obj.rectangle5:setXradius(10);
    obj.rectangle5:setYradius(10);
    obj.rectangle5:setWidth(460);
    obj.rectangle5:setHeight(560);
    obj.rectangle5:setLeft(1);
    obj.rectangle5:setTop(1);
    obj.rectangle5:setName("rectangle5");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.rectangle5);
    obj.label17:setWidth(120);
    obj.label17:setHeight(40);
    obj.label17:setLeft(10);
    obj.label17:setTop(10);
    obj.label17:setFontFamily("Nyala");
    obj.label17:setFontSize(20);
    obj.label17:setText("Nome do Jutsu:");
    obj.label17:setName("label17");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.rectangle5);
    obj.edit23:setWidth(310);
    obj.edit23:setHeight(30);
    obj.edit23:setLeft(130);
    obj.edit23:setTop(15);
    obj.edit23:setField("NomedoJutsu3");
    obj.edit23:setName("edit23");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.rectangle5);
    obj.textEditor3:setLeft(10);
    obj.textEditor3:setTop(60);
    obj.textEditor3:setWidth(430);
    obj.textEditor3:setHeight(280);
    obj.textEditor3:setField("DescriJutsu3");
    obj.textEditor3:setText("Este é um textEditor\n\ncom multiplas linhas");
    obj.textEditor3:setName("textEditor3");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.rectangle5);
    obj.label18:setWidth(120);
    obj.label18:setHeight(40);
    obj.label18:setLeft(10);
    obj.label18:setTop(350);
    obj.label18:setFontFamily("Nyala");
    obj.label18:setFontSize(20);
    obj.label18:setText("Dano");
    obj.label18:setName("label18");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.rectangle5);
    obj.edit24:setWidth(80);
    obj.edit24:setHeight(30);
    obj.edit24:setLeft(55);
    obj.edit24:setTop(355);
    obj.edit24:setType("number");
    obj.edit24:setField("DanoJutsu3");
    obj.edit24:setName("edit24");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.rectangle5);
    obj.label19:setWidth(60);
    obj.label19:setHeight(40);
    obj.label19:setLeft(340);
    obj.label19:setTop(350);
    obj.label19:setFontFamily("Nyala");
    obj.label19:setFontSize(20);
    obj.label19:setFontColor("cyan");
    obj.label19:setText("Chakra");
    obj.label19:setName("label19");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.rectangle5);
    obj.edit25:setWidth(40);
    obj.edit25:setHeight(30);
    obj.edit25:setLeft(400);
    obj.edit25:setTop(355);
    obj.edit25:setType("number");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setFontColor("cyan");
    obj.edit25:setField("CustoJutsu3");
    obj.edit25:setName("edit25");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.rectangle5);
    obj.edit26:setWidth(40);
    obj.edit26:setHeight(30);
    obj.edit26:setLeft(390);
    obj.edit26:setTop(380);
    obj.edit26:setVisible(false);
    obj.edit26:setType("number");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setFontColor("cyan");
    obj.edit26:setField("ChakraPlayer3");
    obj.edit26:setName("edit26");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.rectangle5);
    obj.label20:setWidth(60);
    obj.label20:setHeight(40);
    obj.label20:setLeft(150);
    obj.label20:setTop(350);
    obj.label20:setFontFamily("Nyala");
    obj.label20:setFontSize(20);
    obj.label20:setText("Tipo");
    obj.label20:setName("label20");

    obj.comboBox3 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox3:setParent(obj.rectangle5);
    obj.comboBox3:setLeft(190);
    obj.comboBox3:setTop(363);
    obj.comboBox3:setWidth(140);
    obj.comboBox3:setHeight(18);
    obj.comboBox3:setField("Tipo3");
    obj.comboBox3:setItems({'Tai', 'Nin', 'Gen', 'Elemental', 'Defensivo', 'Selamento', 'Outros', 'M/Tai', 'M/Nin', 'M/Gen', 'M/Elemental'});
    obj.comboBox3:setName("comboBox3");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.rectangle5);
    obj.label21:setWidth(150);
    obj.label21:setHeight(40);
    obj.label21:setLeft(10);
    obj.label21:setTop(390);
    obj.label21:setFontFamily("Nyala");
    obj.label21:setFontSize(16);
    obj.label21:setText("Dano Verdadeiro");
    obj.label21:setName("label21");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.rectangle5);
    obj.edit27:setWidth(80);
    obj.edit27:setHeight(20);
    obj.edit27:setLeft(110);
    obj.edit27:setTop(400);
    obj.edit27:setEnabled(false);
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setType("number");
    obj.edit27:setField("DNVerdadeiro3");
    obj.edit27:setName("edit27");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.rectangle5);
    obj.label22:setWidth(170);
    obj.label22:setHeight(40);
    obj.label22:setLeft(280);
    obj.label22:setTop(390);
    obj.label22:setFontFamily("Nyala");
    obj.label22:setFontColor("Crimson");
    obj.label22:setFontSize(16);
    obj.label22:setText("Intensidade");
    obj.label22:setName("label22");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.rectangle5);
    obj.edit28:setWidth(80);
    obj.edit28:setHeight(20);
    obj.edit28:setLeft(350);
    obj.edit28:setTop(400);
    obj.edit28:setEnabled(false);
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setType("number");
    obj.edit28:setFontColor("Crimson");
    obj.edit28:setField("Intensidade3");
    obj.edit28:setName("edit28");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.rectangle5);
    obj.label23:setWidth(70);
    obj.label23:setHeight(40);
    obj.label23:setLeft(195);
    obj.label23:setTop(390);
    obj.label23:setFontFamily("Nyala");
    obj.label23:setFontSize(16);
    obj.label23:setText("Level");
    obj.label23:setName("label23");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.rectangle5);
    obj.edit29:setWidth(30);
    obj.edit29:setHeight(20);
    obj.edit29:setLeft(230);
    obj.edit29:setTop(400);
    obj.edit29:setEnabled(true);
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setType("number");
    obj.edit29:setField("LevelJutsu3");
    obj.edit29:setName("edit29");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.rectangle5);
    obj.label24:setWidth(230);
    obj.label24:setHeight(40);
    obj.label24:setLeft(180);
    obj.label24:setTop(450);
    obj.label24:setFontFamily("Nyala");
    obj.label24:setFontSize(18);
    obj.label24:setText("Fortificação de jutsu 3D10 e 1d20");
    obj.label24:setName("label24");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.rectangle5);
    obj.edit30:setWidth(50);
    obj.edit30:setHeight(30);
    obj.edit30:setLeft(180);
    obj.edit30:setTop(500);
    obj.edit30:setType("number");
    obj.edit30:setMin(1);
    obj.edit30:setMax(9);
    obj.edit30:setEnabled(false);
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setField("31d10");
    obj.edit30:setName("edit30");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.rectangle5);
    obj.edit31:setWidth(50);
    obj.edit31:setHeight(30);
    obj.edit31:setLeft(240);
    obj.edit31:setTop(500);
    obj.edit31:setType("number");
    obj.edit31:setMin(1);
    obj.edit31:setMax(9);
    obj.edit31:setEnabled(false);
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setField("32d10");
    obj.edit31:setName("edit31");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.rectangle5);
    obj.edit32:setWidth(50);
    obj.edit32:setHeight(30);
    obj.edit32:setLeft(300);
    obj.edit32:setTop(500);
    obj.edit32:setType("number");
    obj.edit32:setMin(1);
    obj.edit32:setMax(9);
    obj.edit32:setEnabled(false);
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setField("33d10");
    obj.edit32:setName("edit32");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.rectangle5);
    obj.rectangle6:setWidth(50);
    obj.rectangle6:setHeight(30);
    obj.rectangle6:setLeft(360);
    obj.rectangle6:setTop(500);
    obj.rectangle6:setColor("black");
    obj.rectangle6:setStrokeColor("red");
    obj.rectangle6:setStrokeSize(3);
    obj.rectangle6:setName("rectangle6");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.rectangle5);
    obj.edit33:setWidth(50);
    obj.edit33:setHeight(30);
    obj.edit33:setLeft(360);
    obj.edit33:setTop(500);
    obj.edit33:setType("number");
    obj.edit33:setMin(1);
    obj.edit33:setMax(18);
    obj.edit33:setEnabled(false);
    obj.edit33:setTransparent(true);
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setField("31d20");
    obj.edit33:setName("edit33");

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.rectangle5);
    obj.image7:setLeft(20);
    obj.image7:setTop(420);
    obj.image7:setWidth(150);
    obj.image7:setHeight(150);
    obj.image7:setSRC("/imagens/Jutsu.png");
    obj.image7:setName("image7");

    obj.button11 = GUI.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.rectangle5);
    obj.button11:setLeft(20);
    obj.button11:setTop(430);
    obj.button11:setFontSize(20);
    obj.button11:setOpacity(0.0);
    obj.button11:setHeight(120);
    obj.button11:setWidth(150);
    obj.button11:setText("Usar");
    obj.button11:setFontColor("White");
    obj.button11:setName("button11");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.scrollBox2);
    obj.edit34:setLeft(90);
    obj.edit34:setTop(32);
    obj.edit34:setWidth(85);
    obj.edit34:setHeight(18);
    obj.edit34:setField("Nome");
    obj.edit34:setName("edit34");

    obj.comboBox4 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox4:setParent(obj.scrollBox2);
    obj.comboBox4:setLeft(220);
    obj.comboBox4:setTop(32);
    obj.comboBox4:setWidth(95);
    obj.comboBox4:setHeight(18);
    obj.comboBox4:setField("Cla");
    obj.comboBox4:setItems({'Sem clã', 'Aburame', 'Akimichi', 'Fuma', 'Hyuga', 'Inuzuka', 'Jyuin', 'Kaguya', 'Kami', 'Kamizurui', 'Nara', 'Uchiha', 'Uzumaki', 'Yamanaka', 'Rinnegan',
		 '----------', 'Fire', 'Kibaku', 'Kori', 'Mashido', 'Nomade', 'Orega', 'Ray', 'Sabaku', 'Senju', 'Temuri', 'Xaulan', '----------', 'Gote', 'Hanbun', 'Kazumi', 'Kouga', 'Miroku', 'Mitsu', 'Nakamura', 'Natsume', 'Neko', 'Neon', 'Shinkara', '----------'});
    obj.comboBox4:setName("comboBox4");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.scrollBox2);
    obj.edit35:setLeft(365);
    obj.edit35:setTop(32);
    obj.edit35:setWidth(50);
    obj.edit35:setHeight(18);
    obj.edit35:setField("Idade");
    obj.edit35:setName("edit35");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.scrollBox2);
    obj.edit36:setLeft(365);
    obj.edit36:setTop(80);
    obj.edit36:setWidth(50);
    obj.edit36:setHeight(18);
    obj.edit36:setVisible(false);
    obj.edit36:setType("number");
    obj.edit36:setMax(40);
    obj.edit36:setField("Idade2");
    obj.edit36:setName("edit36");

    obj.comboBox5 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox5:setParent(obj.scrollBox2);
    obj.comboBox5:setLeft(505);
    obj.comboBox5:setTop(32);
    obj.comboBox5:setWidth(140);
    obj.comboBox5:setHeight(18);
    obj.comboBox5:setField("Graduacao");
    obj.comboBox5:setItems({'Academico', 'Genin', 'Chunin', 'Jounin', 'Anbu', 'AnbuNucleo', 'Organização', 'GDE', 'Concelheiro', 'Kage'});
    obj.comboBox5:setName("comboBox5");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.scrollBox2);
    obj.edit37:setLeft(220);
    obj.edit37:setTop(52);
    obj.edit37:setWidth(85);
    obj.edit37:setHeight(18);
    obj.edit37:setType("number");
    obj.edit37:setEnabled(true);
    obj.edit37:setField("Yen");
    obj.edit37:setName("edit37");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.scrollBox2);
    obj.edit38:setLeft(90);
    obj.edit38:setTop(52);
    obj.edit38:setWidth(85);
    obj.edit38:setHeight(18);
    obj.edit38:setField("Elemento");
    obj.edit38:setName("edit38");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.scrollBox2);
    obj.edit39:setLeft(130);
    obj.edit39:setTop(115);
    obj.edit39:setWidth(85);
    obj.edit39:setHeight(18);
    obj.edit39:setType("number");
    obj.edit39:setField("Forca");
    obj.edit39:setName("edit39");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.scrollBox2);
    obj.edit40:setLeft(130);
    obj.edit40:setTop(135);
    obj.edit40:setWidth(85);
    obj.edit40:setHeight(18);
    obj.edit40:setType("number");
    obj.edit40:setField("Inteligencia");
    obj.edit40:setName("edit40");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.scrollBox2);
    obj.edit41:setLeft(130);
    obj.edit41:setTop(155);
    obj.edit41:setWidth(85);
    obj.edit41:setHeight(18);
    obj.edit41:setType("number");
    obj.edit41:setField("Sabedoria");
    obj.edit41:setName("edit41");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.scrollBox2);
    obj.edit42:setLeft(130);
    obj.edit42:setTop(175);
    obj.edit42:setWidth(85);
    obj.edit42:setHeight(18);
    obj.edit42:setType("number");
    obj.edit42:setField("Habilidade");
    obj.edit42:setName("edit42");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.scrollBox2);
    obj.edit43:setLeft(130);
    obj.edit43:setTop(195);
    obj.edit43:setWidth(85);
    obj.edit43:setHeight(18);
    obj.edit43:setType("number");
    obj.edit43:setField("Resistencia");
    obj.edit43:setName("edit43");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.scrollBox2);
    obj.edit44:setLeft(370);
    obj.edit44:setTop(115);
    obj.edit44:setWidth(85);
    obj.edit44:setEnabled(false);
    obj.edit44:setHeight(18);
    obj.edit44:setType("float");
    obj.edit44:setField("TaiTotal");
    obj.edit44:setName("edit44");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.scrollBox2);
    obj.edit45:setLeft(370);
    obj.edit45:setTop(135);
    obj.edit45:setWidth(85);
    obj.edit45:setEnabled(false);
    obj.edit45:setHeight(18);
    obj.edit45:setType("float");
    obj.edit45:setField("NinTotal");
    obj.edit45:setName("edit45");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.scrollBox2);
    obj.edit46:setLeft(370);
    obj.edit46:setTop(155);
    obj.edit46:setWidth(85);
    obj.edit46:setEnabled(false);
    obj.edit46:setHeight(18);
    obj.edit46:setType("float");
    obj.edit46:setField("GenTotal");
    obj.edit46:setName("edit46");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.scrollBox2);
    obj.edit47:setLeft(370);
    obj.edit47:setTop(175);
    obj.edit47:setWidth(85);
    obj.edit47:setEnabled(false);
    obj.edit47:setHeight(18);
    obj.edit47:setType("float");
    obj.edit47:setField("DATotal");
    obj.edit47:setName("edit47");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.scrollBox2);
    obj.edit48:setLeft(370);
    obj.edit48:setTop(195);
    obj.edit48:setWidth(85);
    obj.edit48:setEnabled(false);
    obj.edit48:setHeight(18);
    obj.edit48:setType("float");
    obj.edit48:setField("EleTotal");
    obj.edit48:setName("edit48");

    obj.button12 = GUI.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.scrollBox2);
    obj.button12:setLeft(540);
    obj.button12:setTop(100);
    obj.button12:setWidth(30);
    obj.button12:setHeight(30);
    obj.button12:setFontColor("Red");
    obj.button12:setFontFamily("Nyala");
    obj.button12:setFontSize(30);
    obj.button12:setVisible(false);
    obj.button12:setEnabled(true);
    obj.button12:setText("«");
    obj.button12:setName("button12");

    obj.button13 = GUI.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.scrollBox2);
    obj.button13:setLeft(625);
    obj.button13:setTop(100);
    obj.button13:setWidth(30);
    obj.button13:setHeight(30);
    obj.button13:setFontColor("Red");
    obj.button13:setFontFamily("Nyala");
    obj.button13:setVisible(false);
    obj.button13:setFontSize(30);
    obj.button13:setText("»");
    obj.button13:setName("button13");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.scrollBox2);
    obj.edit49:setLeft(570);
    obj.edit49:setTop(100);
    obj.edit49:setWidth(55);
    obj.edit49:setHeight(30);
    obj.edit49:setHorzTextAlign("center");
    obj.edit49:setFontColor("Red");
    obj.edit49:setFontFamily("Nyala");
    obj.edit49:setFontSize(25);
    obj.edit49:setEnabled(false);
    obj.edit49:setType("number");
    obj.edit49:setField("Level");
    obj.edit49:setName("edit49");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.scrollBox2);
    obj.edit50:setLeft(535);
    obj.edit50:setTop(132);
    obj.edit50:setWidth(55);
    obj.edit50:setHeight(18);
    obj.edit50:setType("float");
    obj.edit50:setField("Exp");
    obj.edit50:setName("edit50");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.scrollBox2);
    obj.edit51:setLeft(610);
    obj.edit51:setTop(132);
    obj.edit51:setWidth(55);
    obj.edit51:setHeight(18);
    obj.edit51:setEnabled(false);
    obj.edit51:setType("float");
    obj.edit51:setField("ExpTotal");
    obj.edit51:setName("edit51");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.scrollBox2);
    obj.edit52:setLeft(90);
    obj.edit52:setTop(276);
    obj.edit52:setWidth(85);
    obj.edit52:setHeight(18);
    obj.edit52:setType("float");
    obj.edit52:setEnabled(false);
    obj.edit52:setHorzTextAlign("center");
    obj.edit52:setFontColor("Red");
    obj.edit52:setField("HP");
    obj.edit52:setName("edit52");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.scrollBox2);
    obj.edit53:setLeft(90);
    obj.edit53:setTop(296);
    obj.edit53:setWidth(85);
    obj.edit53:setHeight(18);
    obj.edit53:setType("float");
    obj.edit53:setEnabled(false);
    obj.edit53:setHorzTextAlign("center");
    obj.edit53:setFontColor("Cyan");
    obj.edit53:setField("Chakra");
    obj.edit53:setName("edit53");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.scrollBox2);
    obj.edit54:setLeft(90);
    obj.edit54:setTop(316);
    obj.edit54:setWidth(85);
    obj.edit54:setHeight(18);
    obj.edit54:setType("float");
    obj.edit54:setEnabled(false);
    obj.edit54:setHorzTextAlign("center");
    obj.edit54:setFontColor("#FFD700");
    obj.edit54:setField("Reiatsu");
    obj.edit54:setName("edit54");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.scrollBox2);
    obj.edit55:setLeft(90);
    obj.edit55:setTop(336);
    obj.edit55:setWidth(85);
    obj.edit55:setHeight(18);
    obj.edit55:setType("float");
    obj.edit55:setEnabled(false);
    obj.edit55:setHorzTextAlign("center");
    obj.edit55:setField("Outros");
    obj.edit55:setName("edit55");

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.scrollBox2);
    obj.edit56:setLeft(190);
    obj.edit56:setTop(276);
    obj.edit56:setWidth(85);
    obj.edit56:setHeight(18);
    obj.edit56:setEnabled(false);
    obj.edit56:setType("float");
    obj.edit56:setHorzTextAlign("center");
    obj.edit56:setFontColor("Red");
    obj.edit56:setField("HPTotal");
    obj.edit56:setName("edit56");

    obj.button14 = GUI.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.scrollBox2);
    obj.button14:setLeft(300);
    obj.button14:setTop(276);
    obj.button14:setWidth(40);
    obj.button14:setHeight(20);
    obj.button14:setText("❤");
    obj.button14:setName("button14");

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.scrollBox2);
    obj.edit57:setLeft(190);
    obj.edit57:setTop(296);
    obj.edit57:setWidth(85);
    obj.edit57:setHeight(18);
    obj.edit57:setEnabled(false);
    obj.edit57:setType("float");
    obj.edit57:setHorzTextAlign("center");
    obj.edit57:setFontColor("cyan");
    obj.edit57:setField("ChakraTotal");
    obj.edit57:setName("edit57");

    obj.button15 = GUI.fromHandle(_obj_newObject("button"));
    obj.button15:setParent(obj.scrollBox2);
    obj.button15:setLeft(300);
    obj.button15:setTop(296);
    obj.button15:setWidth(40);
    obj.button15:setHeight(20);
    obj.button15:setText("⚡");
    obj.button15:setName("button15");

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.scrollBox2);
    obj.edit58:setLeft(190);
    obj.edit58:setTop(316);
    obj.edit58:setWidth(85);
    obj.edit58:setHeight(18);
    obj.edit58:setEnabled(false);
    obj.edit58:setType("float");
    obj.edit58:setHorzTextAlign("center");
    obj.edit58:setFontColor("#FFD700");
    obj.edit58:setField("ReiatsuTotal");
    obj.edit58:setName("edit58");

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.scrollBox2);
    obj.edit59:setLeft(190);
    obj.edit59:setTop(336);
    obj.edit59:setWidth(85);
    obj.edit59:setHeight(18);
    obj.edit59:setEnabled(false);
    obj.edit59:setType("float");
    obj.edit59:setHorzTextAlign("center");
    obj.edit59:setField("OutrosTotal");
    obj.edit59:setName("edit59");

    obj.comboBox6 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox6:setParent(obj.scrollBox2);
    obj.comboBox6:setLeft(280);
    obj.comboBox6:setTop(336);
    obj.comboBox6:setWidth(110);
    obj.comboBox6:setHeight(18);
    obj.comboBox6:setField("TipoOutro");
    obj.comboBox6:setItems({'ChakraBiju', 'ChakraBranco', 'ChakraPreto', 'Hadou', 'HadouNegro', 'ChakraNatural', 'ChakraRoxo'});
    obj.comboBox6:setName("comboBox6");

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj.scrollBox2);
    obj.image8:setField("imagemDoPersonagem");
    obj.image8:setEditable(true);
    obj.image8:setStyle("autoFit");
    obj.image8:setLeft(404);
    obj.image8:setTop(410);
    obj.image8:setWidth(302);
    obj.image8:setHeight(255);
    obj.image8:setName("image8");

    obj.button16 = GUI.fromHandle(_obj_newObject("button"));
    obj.button16:setParent(obj.scrollBox2);
    obj.button16:setLeft(502);
    obj.button16:setTop(270);
    obj.button16:setWidth(105);
    obj.button16:setHeight(85);
    obj.button16:setOpacity(1.0);
    obj.button16:setVisible(false);
    obj.button16:setText("Calculo");
    obj.button16:setName("button16");

    obj.POPCALCULO = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPCALCULO:setParent(obj.scrollBox2);
    obj.POPCALCULO:setName("POPCALCULO");
    obj.POPCALCULO:setVisible(false);
    obj.POPCALCULO:setLeft(1);
    obj.POPCALCULO:setTop(40);
    obj.POPCALCULO:setWidth(820);
    obj.POPCALCULO:setHeight(620);

    obj.image9 = GUI.fromHandle(_obj_newObject("image"));
    obj.image9:setParent(obj.POPCALCULO);
    obj.image9:setLeft(10);
    obj.image9:setTop(10);
    obj.image9:setWidth(800);
    obj.image9:setHeight(600);
    obj.image9:setSRC("/imagens/CALCULO.png");
    obj.image9:setName("image9");

    obj.edit60 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.POPCALCULO);
    obj.edit60:setLeft(150);
    obj.edit60:setTop(35);
    obj.edit60:setWidth(85);
    obj.edit60:setHeight(18);
    obj.edit60:setEnabled(false);
    obj.edit60:setType("float");
    obj.edit60:setField("CTai");
    obj.edit60:setName("edit60");

    obj.edit61 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.POPCALCULO);
    obj.edit61:setLeft(150);
    obj.edit61:setTop(58);
    obj.edit61:setWidth(85);
    obj.edit61:setHeight(18);
    obj.edit61:setEnabled(false);
    obj.edit61:setType("float");
    obj.edit61:setField("CNin");
    obj.edit61:setName("edit61");

    obj.edit62 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.POPCALCULO);
    obj.edit62:setLeft(150);
    obj.edit62:setTop(81);
    obj.edit62:setWidth(85);
    obj.edit62:setHeight(18);
    obj.edit62:setEnabled(false);
    obj.edit62:setType("float");
    obj.edit62:setField("CGen");
    obj.edit62:setName("edit62");

    obj.edit63 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.POPCALCULO);
    obj.edit63:setLeft(150);
    obj.edit63:setTop(102);
    obj.edit63:setWidth(85);
    obj.edit63:setHeight(18);
    obj.edit63:setEnabled(false);
    obj.edit63:setType("float");
    obj.edit63:setField("CDA");
    obj.edit63:setName("edit63");

    obj.edit64 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.POPCALCULO);
    obj.edit64:setLeft(150);
    obj.edit64:setTop(122);
    obj.edit64:setWidth(85);
    obj.edit64:setHeight(18);
    obj.edit64:setEnabled(false);
    obj.edit64:setType("float");
    obj.edit64:setField("CDE");
    obj.edit64:setName("edit64");

    obj.edit65 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.POPCALCULO);
    obj.edit65:setLeft(150);
    obj.edit65:setTop(145);
    obj.edit65:setWidth(85);
    obj.edit65:setHeight(18);
    obj.edit65:setEnabled(false);
    obj.edit65:setType("float");
    obj.edit65:setField("CHP");
    obj.edit65:setName("edit65");

    obj.edit66 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit66:setParent(obj.POPCALCULO);
    obj.edit66:setLeft(150);
    obj.edit66:setTop(168);
    obj.edit66:setWidth(85);
    obj.edit66:setHeight(18);
    obj.edit66:setEnabled(false);
    obj.edit66:setType("float");
    obj.edit66:setField("CChakra");
    obj.edit66:setName("edit66");

    obj.edit67 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit67:setParent(obj.POPCALCULO);
    obj.edit67:setLeft(280);
    obj.edit67:setTop(35);
    obj.edit67:setWidth(85);
    obj.edit67:setHeight(18);
    obj.edit67:setEnabled(false);
    obj.edit67:setType("float");
    obj.edit67:setField("Taijutsu");
    obj.edit67:setName("edit67");

    obj.edit68 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit68:setParent(obj.POPCALCULO);
    obj.edit68:setLeft(280);
    obj.edit68:setTop(58);
    obj.edit68:setWidth(85);
    obj.edit68:setHeight(18);
    obj.edit68:setEnabled(false);
    obj.edit68:setType("float");
    obj.edit68:setField("Ninjutsu");
    obj.edit68:setName("edit68");

    obj.edit69 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit69:setParent(obj.POPCALCULO);
    obj.edit69:setLeft(280);
    obj.edit69:setTop(81);
    obj.edit69:setWidth(85);
    obj.edit69:setHeight(18);
    obj.edit69:setEnabled(false);
    obj.edit69:setType("float");
    obj.edit69:setField("Genjutsu");
    obj.edit69:setName("edit69");

    obj.edit70 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit70:setParent(obj.POPCALCULO);
    obj.edit70:setLeft(280);
    obj.edit70:setTop(102);
    obj.edit70:setWidth(85);
    obj.edit70:setHeight(18);
    obj.edit70:setEnabled(false);
    obj.edit70:setType("float");
    obj.edit70:setField("DanoArmado");
    obj.edit70:setName("edit70");

    obj.edit71 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit71:setParent(obj.POPCALCULO);
    obj.edit71:setLeft(280);
    obj.edit71:setTop(122);
    obj.edit71:setWidth(85);
    obj.edit71:setHeight(18);
    obj.edit71:setEnabled(false);
    obj.edit71:setType("float");
    obj.edit71:setField("Elemental1");
    obj.edit71:setName("edit71");

    obj.edit72 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit72:setParent(obj.POPCALCULO);
    obj.edit72:setLeft(300);
    obj.edit72:setTop(145);
    obj.edit72:setWidth(85);
    obj.edit72:setHeight(18);
    obj.edit72:setType("float");
    obj.edit72:setEnabled(true);
    obj.edit72:setField("GHP");
    obj.edit72:setName("edit72");

    obj.edit73 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit73:setParent(obj.POPCALCULO);
    obj.edit73:setLeft(300);
    obj.edit73:setTop(168);
    obj.edit73:setWidth(85);
    obj.edit73:setHeight(18);
    obj.edit73:setEnabled(false);
    obj.edit73:setType("float");
    obj.edit73:setField("GChakra");
    obj.edit73:setName("edit73");

    obj.edit74 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit74:setParent(obj.POPCALCULO);
    obj.edit74:setLeft(150);
    obj.edit74:setTop(210);
    obj.edit74:setWidth(85);
    obj.edit74:setHeight(18);
    obj.edit74:setEnabled(false);
    obj.edit74:setType("float");
    obj.edit74:setField("CAT");
    obj.edit74:setName("edit74");

    obj.edit75 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit75:setParent(obj.POPCALCULO);
    obj.edit75:setLeft(150);
    obj.edit75:setTop(230);
    obj.edit75:setWidth(85);
    obj.edit75:setHeight(18);
    obj.edit75:setEnabled(false);
    obj.edit75:setType("float");
    obj.edit75:setField("CAN");
    obj.edit75:setName("edit75");

    obj.edit76 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit76:setParent(obj.POPCALCULO);
    obj.edit76:setLeft(150);
    obj.edit76:setTop(250);
    obj.edit76:setWidth(85);
    obj.edit76:setHeight(18);
    obj.edit76:setEnabled(false);
    obj.edit76:setType("float");
    obj.edit76:setField("CAG");
    obj.edit76:setName("edit76");

    obj.edit77 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit77:setParent(obj.POPCALCULO);
    obj.edit77:setLeft(150);
    obj.edit77:setTop(300);
    obj.edit77:setWidth(85);
    obj.edit77:setHeight(18);
    obj.edit77:setEnabled(false);
    obj.edit77:setType("float");
    obj.edit77:setField("CEsq");
    obj.edit77:setName("edit77");

    obj.edit78 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit78:setParent(obj.POPCALCULO);
    obj.edit78:setLeft(150);
    obj.edit78:setTop(320);
    obj.edit78:setWidth(85);
    obj.edit78:setHeight(18);
    obj.edit78:setEnabled(false);
    obj.edit78:setType("float");
    obj.edit78:setField("CBloq");
    obj.edit78:setName("edit78");

    obj.edit79 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit79:setParent(obj.POPCALCULO);
    obj.edit79:setLeft(150);
    obj.edit79:setTop(360);
    obj.edit79:setWidth(85);
    obj.edit79:setHeight(18);
    obj.edit79:setEnabled(false);
    obj.edit79:setType("float");
    obj.edit79:setField("CCRT");
    obj.edit79:setName("edit79");

    obj.edit80 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit80:setParent(obj.POPCALCULO);
    obj.edit80:setLeft(150);
    obj.edit80:setTop(380);
    obj.edit80:setWidth(85);
    obj.edit80:setHeight(18);
    obj.edit80:setEnabled(false);
    obj.edit80:setType("float");
    obj.edit80:setField("CCRN");
    obj.edit80:setName("edit80");

    obj.edit81 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit81:setParent(obj.POPCALCULO);
    obj.edit81:setLeft(150);
    obj.edit81:setTop(400);
    obj.edit81:setWidth(85);
    obj.edit81:setHeight(18);
    obj.edit81:setEnabled(false);
    obj.edit81:setType("float");
    obj.edit81:setField("CCRG");
    obj.edit81:setName("edit81");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.POPCALCULO);
    obj.dataLink1:setFields({'Level', 'Exp'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.POPCALCULO);
    obj.dataLink2:setFields({'Cla'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.POPCALCULO);
    obj.dataLink3:setFields({'Forca', 'Inteligencia', 'Sabedoria', 'Elemental', 'Habilidade', 'Resistencia', 'TaiTotal', 'NinTotal', 'GenTotal', 'EleTotal', 'DATotal', 'Level', 
		'ArmaDT', 'ArmaDN', 'ArmaDG', 'ArmaDE', 'ArmaDA', 'AcessorioDT', 'AcessorioDN', 'AcessorioDG', 'AcessorioDE', 'DTaijutsu', 'DNinjutsu', 'DGenjutsu', 'DDA', 'DDE', 'Graduacao'
		,'Nome', 'Elemento', 'Cla', 'Idade', 'HP', 'HPTotal', 'Chakra' ,'ChakraTotal', 'Reiatsu', 'ReiatsuTotal', 'Outros', 'OutrosTotal', 'DanoJutsu', 'DanoJutsu2', 'DanoJutsu3', 
		'Intensidade', 'Intensidade2','Intensidade3' ,'CustoJutsu' ,'CustoJutsu2' ,'CustoJutsu3' ,'LevelJutsu' ,'LevelJutsu2' ,'LevelJutsu3' ,'DanoKunai' ,'DanoShuriken' ,'DanoKunaiGigante' ,'DanoShurikenFuuma' ,'Marionete'
		,'PB' ,'GinsoExplosivo' ,'Veneno' ,'Bandagem' ,'BF','DTaijutsu','DNinjutsu','DGenjutsu','DDA','DDE','DHP','DChakra','DReiatsu','DOutro','DAcertoTai','DAcertoNin','DAcertoGen','DBloqueio','DCriticalTai','DCriticalNin','DCriticalGen'
		,'ChakraBiju','ChakraBranco','ChakraPreto','Hadou','HadouNegro','ChakraNatural','ChakraRoxo','IntensidadeP1','IntensidadeP2','IntensidadeP3','CustoPerga1','CustoPerga2','CustoPerga3','DEDC'
		,'Taijutsu','Ninjutsu','Genjutsu','DanoArmado','Elemental1','TipoOutro','TipoItens','Tipo','Tipo2','Tipo3'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.POPCALCULO);
    obj.dataLink4:setFields({'TipoOutro', 'ChakraBiju', 'ChakraBranco', 'ChakraPreto', 'ChakraNatural', 'ChakraRoxo', 'Hadou', 'HadouNegro'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.POPCALCULO);
    obj.dataLink5:setFields({'Graduacao', 'AcertoTaiTotal', 'AcertoNinTotal', 'AcertoGenTotal', 'EsquivaTotal','BloqueioTotal', 'TurnoTotal', 'CRTaiTotal', 'CRNinTotal', 'CRGenTotal', 'GAcertoTai', 'GAcertoNin', 'GAcertoGen', 'GEsquiva', 'GBloqueio', 'GCRTai', 'GCRNin', 'GCRGen', 'GTurno'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.POPCALCULO);
    obj.dataLink6:setFields({'Forca', 'Inteligencia', 'Sabedoria', 'Elemental', 'Habilidade', 'Resistencia', 'TaiTotal', 'NinTotal', 'GenTotal', 'EleTotal', 'DATotal', 'Level', 
		'ArmaDT', 'ArmaDN', 'ArmaDG', 'ArmaDE', 'ArmaDA', 'AcessorioDT', 'AcessorioDN', 'AcessorioDG', 'AcessorioDE', 'DTaijutsu', 'DNinjutsu', 'DGenjutsu', 'DDA', 'DDE', 'Graduacao'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.POPCALCULO);
    obj.dataLink7:setFields({'Forca', 'Inteligencia', 'Sabedoria', 'Elemental', 'Habilidade', 'Resistencia', 'Level', 'Taijutsu', 'Ninjutsu', 'Genjutsu', 'Elemental1', 'DanoArmado',
		'ArmaDT', 'ArmaDN', 'ArmaDG', 'ArmaDE', 'ArmaDA', 'AcessorioDT', 'AcessorioDN', 'AcessorioDG', 'AcessorioDE', 'DTaijutsu', 'DNinjutsu', 'DGenjutsu', 'DDA', 'DDE', 'Graduacao'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.POPCALCULO);
    obj.dataLink8:setFields({'Chakra', 'ChakraTotal', 'ArmaHP','ArmaChakra', 'BandanaChakra', 'Resistencia', 
		'BandanaHP', 'ColeteChakra', 'ColeteHP', 'AcessorioChakra', 'AcessorioHP', 'DHP', 'DChakra', 'CHP', 'GHP'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.POPCALCULO);
    obj.dataLink9:setFields({'HP', 'Chakra', 'ChakraTotal', 'ArmaHP','ArmaChakra', 'BandanaChakra',
		'BandanaHP', 'ColeteChakra', 'ColeteHP', 'AcessorioChakra', 'AcessorioHP', 'DHP', 'DChakra', 'CChakra', 'GChakra', 'Idade'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.POPCALCULO);
    obj.dataLink10:setFields({'TaiTotal', 'NinTotal', 'GenTotal', 'DATotal','EleTotal', 'Level',
		'DReiatsu', 'AcessorioReiatsu'});
    obj.dataLink10:setName("dataLink10");

    obj.button17 = GUI.fromHandle(_obj_newObject("button"));
    obj.button17:setParent(obj.scrollBox2);
    obj.button17:setLeft(32);
    obj.button17:setTop(550);
    obj.button17:setWidth(105);
    obj.button17:setHeight(85);
    obj.button17:setOpacity(0.1);
    obj.button17:setText("");
    obj.button17:setName("button17");

    obj.POPKunai = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPKunai:setParent(obj.scrollBox2);
    obj.POPKunai:setName("POPKunai");
    obj.POPKunai:setVisible(false);
    obj.POPKunai:setLeft(1);
    obj.POPKunai:setTop(40);
    obj.POPKunai:setWidth(550);
    obj.POPKunai:setHeight(550);

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.POPKunai);
    obj.label25:setWidth(120);
    obj.label25:setHeight(40);
    obj.label25:setLeft(280);
    obj.label25:setTop(10);
    obj.label25:setFontColor("Red");
    obj.label25:setFontFamily("Nyala");
    obj.label25:setFontSize(20);
    obj.label25:setText("Danos");
    obj.label25:setName("label25");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.POPKunai);
    obj.label26:setWidth(120);
    obj.label26:setHeight(40);
    obj.label26:setLeft(420);
    obj.label26:setTop(10);
    obj.label26:setFontColor("Red");
    obj.label26:setFontFamily("Nyala");
    obj.label26:setFontSize(20);
    obj.label26:setText("Quantidade");
    obj.label26:setName("label26");

    obj.image10 = GUI.fromHandle(_obj_newObject("image"));
    obj.image10:setParent(obj.POPKunai);
    obj.image10:setLeft(10);
    obj.image10:setTop(30);
    obj.image10:setWidth(100);
    obj.image10:setHeight(130);
    obj.image10:setSRC("/imagens/kunai.png");
    obj.image10:setName("image10");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.POPKunai);
    obj.label27:setWidth(120);
    obj.label27:setHeight(40);
    obj.label27:setLeft(130);
    obj.label27:setTop(60);
    obj.label27:setFontFamily("Nyala");
    obj.label27:setFontSize(20);
    obj.label27:setText("Dano Kunai");
    obj.label27:setName("label27");

    obj.edit82 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit82:setParent(obj.POPKunai);
    obj.edit82:setWidth(100);
    obj.edit82:setHeight(30);
    obj.edit82:setLeft(260);
    obj.edit82:setTop(65);
    obj.edit82:setEnabled(false);
    obj.edit82:setField("DanoKunai");
    obj.edit82:setName("edit82");

    obj.image11 = GUI.fromHandle(_obj_newObject("image"));
    obj.image11:setParent(obj.POPKunai);
    obj.image11:setLeft(10);
    obj.image11:setTop(130);
    obj.image11:setWidth(100);
    obj.image11:setHeight(100);
    obj.image11:setSRC("/imagens/shuriken.png");
    obj.image11:setName("image11");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.POPKunai);
    obj.label28:setWidth(120);
    obj.label28:setHeight(40);
    obj.label28:setLeft(130);
    obj.label28:setTop(150);
    obj.label28:setFontFamily("Nyala");
    obj.label28:setFontSize(20);
    obj.label28:setText("Dano Shuriken");
    obj.label28:setName("label28");

    obj.edit83 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit83:setParent(obj.POPKunai);
    obj.edit83:setWidth(100);
    obj.edit83:setHeight(30);
    obj.edit83:setLeft(260);
    obj.edit83:setTop(155);
    obj.edit83:setEnabled(false);
    obj.edit83:setField("DanoShuriken");
    obj.edit83:setName("edit83");

    obj.image12 = GUI.fromHandle(_obj_newObject("image"));
    obj.image12:setParent(obj.POPKunai);
    obj.image12:setLeft(10);
    obj.image12:setTop(230);
    obj.image12:setWidth(100);
    obj.image12:setHeight(100);
    obj.image12:setSRC("/imagens/SFuuma.png");
    obj.image12:setName("image12");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.POPKunai);
    obj.label29:setWidth(120);
    obj.label29:setHeight(40);
    obj.label29:setLeft(130);
    obj.label29:setTop(250);
    obj.label29:setFontFamily("Nyala");
    obj.label29:setFontSize(20);
    obj.label29:setText("Shuriken Fuuma");
    obj.label29:setName("label29");

    obj.edit84 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit84:setParent(obj.POPKunai);
    obj.edit84:setWidth(100);
    obj.edit84:setHeight(30);
    obj.edit84:setLeft(260);
    obj.edit84:setTop(255);
    obj.edit84:setEnabled(false);
    obj.edit84:setField("DanoShurikenFuuma");
    obj.edit84:setName("edit84");

    obj.image13 = GUI.fromHandle(_obj_newObject("image"));
    obj.image13:setParent(obj.POPKunai);
    obj.image13:setLeft(10);
    obj.image13:setTop(330);
    obj.image13:setWidth(100);
    obj.image13:setHeight(100);
    obj.image13:setSRC("/imagens/Kgigante.png");
    obj.image13:setName("image13");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.POPKunai);
    obj.label30:setWidth(120);
    obj.label30:setHeight(40);
    obj.label30:setLeft(130);
    obj.label30:setTop(350);
    obj.label30:setFontFamily("Nyala");
    obj.label30:setFontSize(20);
    obj.label30:setText("Kunai Gigante");
    obj.label30:setName("label30");

    obj.edit85 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit85:setParent(obj.POPKunai);
    obj.edit85:setWidth(100);
    obj.edit85:setHeight(30);
    obj.edit85:setLeft(260);
    obj.edit85:setTop(355);
    obj.edit85:setEnabled(false);
    obj.edit85:setField("DanoKunaiGigante");
    obj.edit85:setName("edit85");

    obj.image14 = GUI.fromHandle(_obj_newObject("image"));
    obj.image14:setParent(obj.POPKunai);
    obj.image14:setLeft(10);
    obj.image14:setTop(430);
    obj.image14:setWidth(100);
    obj.image14:setHeight(100);
    obj.image14:setSRC("/imagens/Senbon.png");
    obj.image14:setName("image14");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.POPKunai);
    obj.label31:setWidth(120);
    obj.label31:setHeight(40);
    obj.label31:setLeft(130);
    obj.label31:setTop(450);
    obj.label31:setFontFamily("Nyala");
    obj.label31:setFontSize(20);
    obj.label31:setText("Senbon");
    obj.label31:setName("label31");

    obj.edit86 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit86:setParent(obj.POPKunai);
    obj.edit86:setWidth(100);
    obj.edit86:setHeight(30);
    obj.edit86:setLeft(260);
    obj.edit86:setTop(455);
    obj.edit86:setEnabled(false);
    obj.edit86:setField("Senbon");
    obj.edit86:setName("edit86");

    obj.edit87 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit87:setParent(obj.POPKunai);
    obj.edit87:setWidth(100);
    obj.edit87:setHeight(30);
    obj.edit87:setLeft(410);
    obj.edit87:setTop(65);
    obj.edit87:setEnabled(false);
    obj.edit87:setField("KunaiLimite");
    obj.edit87:setName("edit87");

    obj.edit88 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit88:setParent(obj.POPKunai);
    obj.edit88:setWidth(100);
    obj.edit88:setHeight(30);
    obj.edit88:setLeft(410);
    obj.edit88:setTop(155);
    obj.edit88:setEnabled(false);
    obj.edit88:setField("ShurikenLimite");
    obj.edit88:setName("edit88");

    obj.edit89 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit89:setParent(obj.POPKunai);
    obj.edit89:setWidth(100);
    obj.edit89:setHeight(30);
    obj.edit89:setLeft(410);
    obj.edit89:setTop(255);
    obj.edit89:setEnabled(false);
    obj.edit89:setField("SFuumaLimite");
    obj.edit89:setName("edit89");

    obj.edit90 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit90:setParent(obj.POPKunai);
    obj.edit90:setWidth(100);
    obj.edit90:setHeight(30);
    obj.edit90:setLeft(410);
    obj.edit90:setTop(355);
    obj.edit90:setEnabled(false);
    obj.edit90:setField("KGiganteLimite");
    obj.edit90:setName("edit90");

    obj.edit91 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit91:setParent(obj.POPKunai);
    obj.edit91:setWidth(100);
    obj.edit91:setHeight(30);
    obj.edit91:setLeft(410);
    obj.edit91:setTop(455);
    obj.edit91:setEnabled(false);
    obj.edit91:setField("SenbonLimite");
    obj.edit91:setName("edit91");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.POPKunai);
    obj.dataLink11:setFields({'Forca', 'Inteligencia', 'Sabedoria', 'Habilidade', 'Resistencia'});
    obj.dataLink11:setName("dataLink11");

    obj.button18 = GUI.fromHandle(_obj_newObject("button"));
    obj.button18:setParent(obj.scrollBox2);
    obj.button18:setLeft(140);
    obj.button18:setTop(550);
    obj.button18:setWidth(105);
    obj.button18:setHeight(85);
    obj.button18:setOpacity(0.1);
    obj.button18:setText("");
    obj.button18:setName("button18");

    obj.POPPB = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPPB:setParent(obj.scrollBox2);
    obj.POPPB:setName("POPPB");
    obj.POPPB:setVisible(false);
    obj.POPPB:setLeft(1);
    obj.POPPB:setTop(40);
    obj.POPPB:setWidth(550);
    obj.POPPB:setHeight(550);

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.POPPB);
    obj.label32:setWidth(120);
    obj.label32:setHeight(40);
    obj.label32:setLeft(280);
    obj.label32:setTop(10);
    obj.label32:setFontColor("Red");
    obj.label32:setFontFamily("Nyala");
    obj.label32:setFontSize(20);
    obj.label32:setText("Danos");
    obj.label32:setName("label32");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.POPPB);
    obj.label33:setWidth(120);
    obj.label33:setHeight(40);
    obj.label33:setLeft(420);
    obj.label33:setTop(10);
    obj.label33:setFontColor("Red");
    obj.label33:setFontFamily("Nyala");
    obj.label33:setFontSize(20);
    obj.label33:setText("Quantidade");
    obj.label33:setName("label33");

    obj.image15 = GUI.fromHandle(_obj_newObject("image"));
    obj.image15:setParent(obj.POPPB);
    obj.image15:setLeft(10);
    obj.image15:setTop(30);
    obj.image15:setWidth(100);
    obj.image15:setHeight(130);
    obj.image15:setSRC("/imagens/pb.png");
    obj.image15:setName("image15");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.POPPB);
    obj.label34:setWidth(120);
    obj.label34:setHeight(40);
    obj.label34:setLeft(130);
    obj.label34:setTop(60);
    obj.label34:setFontFamily("Nyala");
    obj.label34:setFontSize(20);
    obj.label34:setText("Papel Bomba");
    obj.label34:setName("label34");

    obj.edit92 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit92:setParent(obj.POPPB);
    obj.edit92:setWidth(100);
    obj.edit92:setHeight(30);
    obj.edit92:setLeft(260);
    obj.edit92:setTop(65);
    obj.edit92:setEnabled(false);
    obj.edit92:setField("PB");
    obj.edit92:setName("edit92");

    obj.image16 = GUI.fromHandle(_obj_newObject("image"));
    obj.image16:setParent(obj.POPPB);
    obj.image16:setLeft(0);
    obj.image16:setTop(120);
    obj.image16:setWidth(130);
    obj.image16:setHeight(130);
    obj.image16:setSRC("/imagens/BE.png");
    obj.image16:setName("image16");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.POPPB);
    obj.label35:setWidth(120);
    obj.label35:setHeight(40);
    obj.label35:setLeft(130);
    obj.label35:setTop(150);
    obj.label35:setFontFamily("Nyala");
    obj.label35:setFontSize(20);
    obj.label35:setText("Ginso Explosivo");
    obj.label35:setName("label35");

    obj.edit93 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit93:setParent(obj.POPPB);
    obj.edit93:setWidth(100);
    obj.edit93:setHeight(30);
    obj.edit93:setLeft(260);
    obj.edit93:setTop(155);
    obj.edit93:setEnabled(false);
    obj.edit93:setField("GinsoExplosivo");
    obj.edit93:setName("edit93");

    obj.image17 = GUI.fromHandle(_obj_newObject("image"));
    obj.image17:setParent(obj.POPPB);
    obj.image17:setLeft(20);
    obj.image17:setTop(240);
    obj.image17:setWidth(100);
    obj.image17:setHeight(100);
    obj.image17:setSRC("/imagens/veneno.png");
    obj.image17:setName("image17");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.POPPB);
    obj.label36:setWidth(120);
    obj.label36:setHeight(40);
    obj.label36:setLeft(130);
    obj.label36:setTop(250);
    obj.label36:setFontFamily("Nyala");
    obj.label36:setFontSize(20);
    obj.label36:setText("Veneno");
    obj.label36:setName("label36");

    obj.edit94 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit94:setParent(obj.POPPB);
    obj.edit94:setWidth(100);
    obj.edit94:setHeight(30);
    obj.edit94:setLeft(260);
    obj.edit94:setTop(255);
    obj.edit94:setEnabled(false);
    obj.edit94:setField("Veneno");
    obj.edit94:setName("edit94");

    obj.image18 = GUI.fromHandle(_obj_newObject("image"));
    obj.image18:setParent(obj.POPPB);
    obj.image18:setLeft(10);
    obj.image18:setTop(330);
    obj.image18:setWidth(100);
    obj.image18:setHeight(100);
    obj.image18:setSRC("/imagens/bandagem.png");
    obj.image18:setName("image18");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.POPPB);
    obj.label37:setWidth(120);
    obj.label37:setHeight(40);
    obj.label37:setLeft(130);
    obj.label37:setTop(350);
    obj.label37:setFontFamily("Nyala");
    obj.label37:setFontSize(20);
    obj.label37:setText("Bandagem");
    obj.label37:setName("label37");

    obj.edit95 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit95:setParent(obj.POPPB);
    obj.edit95:setWidth(100);
    obj.edit95:setHeight(30);
    obj.edit95:setLeft(260);
    obj.edit95:setTop(355);
    obj.edit95:setEnabled(false);
    obj.edit95:setField("Bandagem");
    obj.edit95:setName("edit95");

    obj.image19 = GUI.fromHandle(_obj_newObject("image"));
    obj.image19:setParent(obj.POPPB);
    obj.image19:setLeft(10);
    obj.image19:setTop(430);
    obj.image19:setWidth(100);
    obj.image19:setHeight(100);
    obj.image19:setSRC("/imagens/bombaf.png");
    obj.image19:setName("image19");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.POPPB);
    obj.label38:setWidth(120);
    obj.label38:setHeight(40);
    obj.label38:setLeft(130);
    obj.label38:setTop(450);
    obj.label38:setFontFamily("Nyala");
    obj.label38:setFontSize(20);
    obj.label38:setText("Bomba Fumaça");
    obj.label38:setName("label38");

    obj.edit96 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit96:setParent(obj.POPPB);
    obj.edit96:setWidth(100);
    obj.edit96:setHeight(30);
    obj.edit96:setLeft(260);
    obj.edit96:setTop(455);
    obj.edit96:setEnabled(false);
    obj.edit96:setField("BF");
    obj.edit96:setName("edit96");

    obj.edit97 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit97:setParent(obj.POPPB);
    obj.edit97:setWidth(100);
    obj.edit97:setHeight(30);
    obj.edit97:setLeft(410);
    obj.edit97:setTop(65);
    obj.edit97:setEnabled(false);
    obj.edit97:setField("PBombaLimite");
    obj.edit97:setName("edit97");

    obj.edit98 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit98:setParent(obj.POPPB);
    obj.edit98:setWidth(100);
    obj.edit98:setHeight(30);
    obj.edit98:setLeft(410);
    obj.edit98:setTop(155);
    obj.edit98:setEnabled(false);
    obj.edit98:setField("GExplosivoLimite");
    obj.edit98:setName("edit98");

    obj.edit99 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit99:setParent(obj.POPPB);
    obj.edit99:setWidth(100);
    obj.edit99:setHeight(30);
    obj.edit99:setLeft(410);
    obj.edit99:setTop(255);
    obj.edit99:setEnabled(false);
    obj.edit99:setField("VenenoLimite");
    obj.edit99:setName("edit99");

    obj.edit100 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit100:setParent(obj.POPPB);
    obj.edit100:setWidth(100);
    obj.edit100:setHeight(30);
    obj.edit100:setLeft(410);
    obj.edit100:setTop(355);
    obj.edit100:setEnabled(false);
    obj.edit100:setField("BandagemLimite");
    obj.edit100:setName("edit100");

    obj.edit101 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit101:setParent(obj.POPPB);
    obj.edit101:setWidth(100);
    obj.edit101:setHeight(30);
    obj.edit101:setLeft(410);
    obj.edit101:setTop(455);
    obj.edit101:setEnabled(false);
    obj.edit101:setField("BombaFumacaLimite");
    obj.edit101:setName("edit101");

    obj.button19 = GUI.fromHandle(_obj_newObject("button"));
    obj.button19:setParent(obj.scrollBox2);
    obj.button19:setLeft(250);
    obj.button19:setTop(550);
    obj.button19:setWidth(105);
    obj.button19:setHeight(85);
    obj.button19:setOpacity(0.1);
    obj.button19:setText("");
    obj.button19:setName("button19");

    obj.POPDiverso = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPDiverso:setParent(obj.tab1);
    obj.POPDiverso:setName("POPDiverso");
    obj.POPDiverso:setVisible(false);
    obj.POPDiverso:setLeft(1);
    obj.POPDiverso:setTop(40);
    obj.POPDiverso:setWidth(1130);
    obj.POPDiverso:setHeight(400);

    obj.image20 = GUI.fromHandle(_obj_newObject("image"));
    obj.image20:setParent(obj.POPDiverso);
    obj.image20:setLeft(1);
    obj.image20:setTop(1);
    obj.image20:setWidth(1110);
    obj.image20:setHeight(350);
    obj.image20:setSRC("/imagens/6.png");
    obj.image20:setName("image20");

    obj.edit102 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit102:setParent(obj.POPDiverso);
    obj.edit102:setWidth(80);
    obj.edit102:setHeight(20);
    obj.edit102:setLeft(220);
    obj.edit102:setTop(73);
    obj.edit102:setType("number");
    obj.edit102:setField("DTaijutsu");
    obj.edit102:setName("edit102");

    obj.edit103 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit103:setParent(obj.POPDiverso);
    obj.edit103:setWidth(80);
    obj.edit103:setHeight(20);
    obj.edit103:setLeft(220);
    obj.edit103:setTop(95);
    obj.edit103:setType("number");
    obj.edit103:setField("DNinjutsu");
    obj.edit103:setName("edit103");

    obj.edit104 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit104:setParent(obj.POPDiverso);
    obj.edit104:setWidth(80);
    obj.edit104:setHeight(20);
    obj.edit104:setLeft(220);
    obj.edit104:setTop(117);
    obj.edit104:setType("number");
    obj.edit104:setField("DGenjutsu");
    obj.edit104:setName("edit104");

    obj.edit105 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit105:setParent(obj.POPDiverso);
    obj.edit105:setWidth(80);
    obj.edit105:setHeight(20);
    obj.edit105:setLeft(220);
    obj.edit105:setTop(139);
    obj.edit105:setType("number");
    obj.edit105:setField("DDA");
    obj.edit105:setName("edit105");

    obj.edit106 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit106:setParent(obj.POPDiverso);
    obj.edit106:setWidth(80);
    obj.edit106:setHeight(20);
    obj.edit106:setLeft(220);
    obj.edit106:setTop(161);
    obj.edit106:setType("number");
    obj.edit106:setField("DDE");
    obj.edit106:setName("edit106");

    obj.edit107 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit107:setParent(obj.POPDiverso);
    obj.edit107:setWidth(80);
    obj.edit107:setHeight(20);
    obj.edit107:setLeft(220);
    obj.edit107:setTop(183);
    obj.edit107:setType("number");
    obj.edit107:setField("DHP");
    obj.edit107:setName("edit107");

    obj.edit108 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit108:setParent(obj.POPDiverso);
    obj.edit108:setWidth(80);
    obj.edit108:setHeight(20);
    obj.edit108:setLeft(220);
    obj.edit108:setTop(205);
    obj.edit108:setType("number");
    obj.edit108:setField("DChakra");
    obj.edit108:setName("edit108");

    obj.edit109 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit109:setParent(obj.POPDiverso);
    obj.edit109:setWidth(80);
    obj.edit109:setHeight(20);
    obj.edit109:setLeft(220);
    obj.edit109:setTop(227);
    obj.edit109:setType("number");
    obj.edit109:setField("DReiatsu");
    obj.edit109:setName("edit109");

    obj.edit110 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit110:setParent(obj.POPDiverso);
    obj.edit110:setWidth(80);
    obj.edit110:setHeight(20);
    obj.edit110:setLeft(220);
    obj.edit110:setTop(249);
    obj.edit110:setType("number");
    obj.edit110:setField("DOutro");
    obj.edit110:setName("edit110");

    obj.edit111 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit111:setParent(obj.POPDiverso);
    obj.edit111:setWidth(80);
    obj.edit111:setHeight(20);
    obj.edit111:setLeft(480);
    obj.edit111:setTop(73);
    obj.edit111:setType("number");
    obj.edit111:setField("DAcertoTai");
    obj.edit111:setName("edit111");

    obj.edit112 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit112:setParent(obj.POPDiverso);
    obj.edit112:setWidth(80);
    obj.edit112:setHeight(20);
    obj.edit112:setLeft(480);
    obj.edit112:setTop(95);
    obj.edit112:setType("number");
    obj.edit112:setField("DAcertoNin");
    obj.edit112:setName("edit112");

    obj.edit113 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit113:setParent(obj.POPDiverso);
    obj.edit113:setWidth(80);
    obj.edit113:setHeight(20);
    obj.edit113:setLeft(480);
    obj.edit113:setTop(117);
    obj.edit113:setType("number");
    obj.edit113:setField("DAcertoGen");
    obj.edit113:setName("edit113");

    obj.edit114 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit114:setParent(obj.POPDiverso);
    obj.edit114:setWidth(80);
    obj.edit114:setHeight(20);
    obj.edit114:setLeft(480);
    obj.edit114:setTop(139);
    obj.edit114:setType("number");
    obj.edit114:setField("DBloqueio");
    obj.edit114:setName("edit114");

    obj.edit115 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit115:setParent(obj.POPDiverso);
    obj.edit115:setWidth(80);
    obj.edit115:setHeight(20);
    obj.edit115:setLeft(480);
    obj.edit115:setTop(161);
    obj.edit115:setType("number");
    obj.edit115:setField("DEsquiva");
    obj.edit115:setName("edit115");

    obj.edit116 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit116:setParent(obj.POPDiverso);
    obj.edit116:setWidth(80);
    obj.edit116:setHeight(20);
    obj.edit116:setLeft(480);
    obj.edit116:setTop(183);
    obj.edit116:setType("number");
    obj.edit116:setField("DCriticalTai");
    obj.edit116:setName("edit116");

    obj.edit117 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit117:setParent(obj.POPDiverso);
    obj.edit117:setWidth(80);
    obj.edit117:setHeight(20);
    obj.edit117:setLeft(480);
    obj.edit117:setTop(205);
    obj.edit117:setType("number");
    obj.edit117:setField("DCriticalNin");
    obj.edit117:setName("edit117");

    obj.edit118 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit118:setParent(obj.POPDiverso);
    obj.edit118:setWidth(80);
    obj.edit118:setHeight(20);
    obj.edit118:setLeft(480);
    obj.edit118:setTop(227);
    obj.edit118:setType("number");
    obj.edit118:setField("DCriticalGen");
    obj.edit118:setName("edit118");

    obj.edit119 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit119:setParent(obj.POPDiverso);
    obj.edit119:setWidth(80);
    obj.edit119:setHeight(20);
    obj.edit119:setLeft(740);
    obj.edit119:setTop(73);
    obj.edit119:setType("number");
    obj.edit119:setField("ChakraBiju");
    obj.edit119:setName("edit119");

    obj.edit120 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit120:setParent(obj.POPDiverso);
    obj.edit120:setWidth(80);
    obj.edit120:setHeight(20);
    obj.edit120:setLeft(740);
    obj.edit120:setTop(95);
    obj.edit120:setType("number");
    obj.edit120:setField("ChakraBranco");
    obj.edit120:setName("edit120");

    obj.edit121 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit121:setParent(obj.POPDiverso);
    obj.edit121:setWidth(80);
    obj.edit121:setHeight(20);
    obj.edit121:setLeft(740);
    obj.edit121:setTop(117);
    obj.edit121:setType("number");
    obj.edit121:setField("ChakraPreto");
    obj.edit121:setName("edit121");

    obj.edit122 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit122:setParent(obj.POPDiverso);
    obj.edit122:setWidth(80);
    obj.edit122:setHeight(20);
    obj.edit122:setLeft(740);
    obj.edit122:setTop(139);
    obj.edit122:setType("number");
    obj.edit122:setField("Hadou");
    obj.edit122:setName("edit122");

    obj.edit123 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit123:setParent(obj.POPDiverso);
    obj.edit123:setWidth(80);
    obj.edit123:setHeight(20);
    obj.edit123:setLeft(740);
    obj.edit123:setTop(161);
    obj.edit123:setType("number");
    obj.edit123:setField("HadouNegro");
    obj.edit123:setName("edit123");

    obj.edit124 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit124:setParent(obj.POPDiverso);
    obj.edit124:setWidth(80);
    obj.edit124:setHeight(20);
    obj.edit124:setLeft(740);
    obj.edit124:setTop(183);
    obj.edit124:setType("number");
    obj.edit124:setField("ChakraNatural");
    obj.edit124:setName("edit124");

    obj.edit125 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit125:setParent(obj.POPDiverso);
    obj.edit125:setWidth(80);
    obj.edit125:setHeight(20);
    obj.edit125:setLeft(740);
    obj.edit125:setTop(205);
    obj.edit125:setType("number");
    obj.edit125:setField("ChakraRoxo");
    obj.edit125:setName("edit125");

    obj.button20 = GUI.fromHandle(_obj_newObject("button"));
    obj.button20:setParent(obj.POPDiverso);
    obj.button20:setLeft(845);
    obj.button20:setTop(105);
    obj.button20:setWidth(70);
    obj.button20:setHeight(80);
    obj.button20:setOpacity(0.1);
    obj.button20:setText("");
    obj.button20:setName("button20");

    obj.POPPergaminho1 = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPPergaminho1:setParent(obj.POPDiverso);
    obj.POPPergaminho1:setName("POPPergaminho1");
    obj.POPPergaminho1:setVisible(false);
    obj.POPPergaminho1:setLeft(1);
    obj.POPPergaminho1:setTop(40);
    obj.POPPergaminho1:setWidth(450);
    obj.POPPergaminho1:setHeight(520);

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.POPPergaminho1);
    obj.label39:setWidth(120);
    obj.label39:setHeight(40);
    obj.label39:setLeft(10);
    obj.label39:setTop(10);
    obj.label39:setFontFamily("Nyala");
    obj.label39:setFontSize(20);
    obj.label39:setText("Selado :");
    obj.label39:setName("label39");

    obj.edit126 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit126:setParent(obj.POPPergaminho1);
    obj.edit126:setWidth(310);
    obj.edit126:setHeight(30);
    obj.edit126:setLeft(100);
    obj.edit126:setTop(15);
    obj.edit126:setField("NomePergaminho1");
    obj.edit126:setName("edit126");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.POPPergaminho1);
    obj.textEditor4:setLeft(10);
    obj.textEditor4:setTop(60);
    obj.textEditor4:setWidth(430);
    obj.textEditor4:setHeight(280);
    obj.textEditor4:setField("DescriPergaminho1");
    obj.textEditor4:setText("Este é um textEditor\n\ncom multiplas linhas");
    obj.textEditor4:setName("textEditor4");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.POPPergaminho1);
    obj.label40:setWidth(120);
    obj.label40:setHeight(40);
    obj.label40:setLeft(10);
    obj.label40:setTop(350);
    obj.label40:setFontFamily("Nyala");
    obj.label40:setFontSize(20);
    obj.label40:setText("Intensidade");
    obj.label40:setName("label40");

    obj.edit127 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit127:setParent(obj.POPPergaminho1);
    obj.edit127:setWidth(120);
    obj.edit127:setHeight(30);
    obj.edit127:setLeft(100);
    obj.edit127:setTop(355);
    obj.edit127:setType("number");
    obj.edit127:setEnabled(false);
    obj.edit127:setField("IntensidadeP1");
    obj.edit127:setName("edit127");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.POPPergaminho1);
    obj.label41:setWidth(60);
    obj.label41:setHeight(40);
    obj.label41:setLeft(340);
    obj.label41:setTop(350);
    obj.label41:setFontFamily("Nyala");
    obj.label41:setFontSize(20);
    obj.label41:setText("Chakra");
    obj.label41:setName("label41");

    obj.edit128 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit128:setParent(obj.POPPergaminho1);
    obj.edit128:setWidth(40);
    obj.edit128:setHeight(30);
    obj.edit128:setLeft(400);
    obj.edit128:setTop(355);
    obj.edit128:setType("number");
    obj.edit128:setField("CustoPerga1");
    obj.edit128:setName("edit128");

    obj.edit129 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit129:setParent(obj.POPPergaminho1);
    obj.edit129:setWidth(40);
    obj.edit129:setHeight(30);
    obj.edit129:setLeft(390);
    obj.edit129:setTop(380);
    obj.edit129:setVisible(false);
    obj.edit129:setType("number");
    obj.edit129:setField("ChakraPerga1");
    obj.edit129:setName("edit129");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.POPPergaminho1);
    obj.label42:setWidth(60);
    obj.label42:setHeight(40);
    obj.label42:setLeft(230);
    obj.label42:setTop(350);
    obj.label42:setFontFamily("Nyala");
    obj.label42:setFontSize(20);
    obj.label42:setText("Tipo");
    obj.label42:setName("label42");

    obj.comboBox7 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox7:setParent(obj.POPPergaminho1);
    obj.comboBox7:setLeft(275);
    obj.comboBox7:setTop(363);
    obj.comboBox7:setWidth(50);
    obj.comboBox7:setHeight(18);
    obj.comboBox7:setField("TipoPergaminho1");
    obj.comboBox7:setItems({'X', 'SS', 'S'});
    obj.comboBox7:setName("comboBox7");

    obj.image21 = GUI.fromHandle(_obj_newObject("image"));
    obj.image21:setParent(obj.POPPergaminho1);
    obj.image21:setLeft(20);
    obj.image21:setTop(380);
    obj.image21:setOpacity(1.0);
    obj.image21:setWidth(150);
    obj.image21:setHeight(150);
    obj.image21:setSRC("/imagens/Pergamin.png");
    obj.image21:setName("image21");

    obj.button21 = GUI.fromHandle(_obj_newObject("button"));
    obj.button21:setParent(obj.POPPergaminho1);
    obj.button21:setLeft(20);
    obj.button21:setTop(390);
    obj.button21:setFontSize(20);
    obj.button21:setOpacity(0.0);
    obj.button21:setHeight(120);
    obj.button21:setWidth(150);
    obj.button21:setText("");
    obj.button21:setFontColor("White");
    obj.button21:setName("button21");

 
						local function Pergaminho1() 
						   
						local mesaDoPersonagem = rrpg.getMesaDe(sheet); 

						mesaDoPersonagem.chat:rolarDados("1d100", "[§K3]Uso do Pergaminho Grande",
							function (rolado)
							
								mesaDoPersonagem.chat:enviarMensagem(".. [§K3]".. sheet.DescriPergaminho1);
								local mesa = Firecast.getMesaDe(sheet); 
								local CustoPerga1 = mesa.meuJogador:getBarValue(2);
								CustoPerga1 = CustoPerga1 - (tonumber(sheet.CustoPerga1) or 0);
								mesa.meuJogador:requestSetBarValue(2, CustoPerga1);
						
						end);
						end;			
					


    obj.button22 = GUI.fromHandle(_obj_newObject("button"));
    obj.button22:setParent(obj.POPDiverso);
    obj.button22:setLeft(917);
    obj.button22:setTop(105);
    obj.button22:setWidth(65);
    obj.button22:setHeight(80);
    obj.button22:setOpacity(0.1);
    obj.button22:setText("");
    obj.button22:setName("button22");

    obj.POPPergaminho2 = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPPergaminho2:setParent(obj.POPDiverso);
    obj.POPPergaminho2:setName("POPPergaminho2");
    obj.POPPergaminho2:setVisible(false);
    obj.POPPergaminho2:setLeft(1);
    obj.POPPergaminho2:setTop(40);
    obj.POPPergaminho2:setWidth(450);
    obj.POPPergaminho2:setHeight(520);

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.POPPergaminho2);
    obj.label43:setWidth(120);
    obj.label43:setHeight(40);
    obj.label43:setLeft(10);
    obj.label43:setTop(10);
    obj.label43:setFontFamily("Nyala");
    obj.label43:setFontSize(20);
    obj.label43:setText("Selado :");
    obj.label43:setName("label43");

    obj.edit130 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit130:setParent(obj.POPPergaminho2);
    obj.edit130:setWidth(310);
    obj.edit130:setHeight(30);
    obj.edit130:setLeft(100);
    obj.edit130:setTop(15);
    obj.edit130:setField("NomePergaminho2");
    obj.edit130:setName("edit130");

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.POPPergaminho2);
    obj.textEditor5:setLeft(10);
    obj.textEditor5:setTop(60);
    obj.textEditor5:setWidth(430);
    obj.textEditor5:setHeight(280);
    obj.textEditor5:setField("DescriPergaminho2");
    obj.textEditor5:setText("Este é um textEditor\n\ncom multiplas linhas");
    obj.textEditor5:setName("textEditor5");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.POPPergaminho2);
    obj.label44:setWidth(120);
    obj.label44:setHeight(40);
    obj.label44:setLeft(10);
    obj.label44:setTop(350);
    obj.label44:setFontFamily("Nyala");
    obj.label44:setFontSize(20);
    obj.label44:setText("Intensidade");
    obj.label44:setName("label44");

    obj.edit131 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit131:setParent(obj.POPPergaminho2);
    obj.edit131:setWidth(120);
    obj.edit131:setHeight(30);
    obj.edit131:setLeft(100);
    obj.edit131:setTop(355);
    obj.edit131:setEnabled(false);
    obj.edit131:setType("number");
    obj.edit131:setField("IntensidadeP2");
    obj.edit131:setName("edit131");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.POPPergaminho2);
    obj.label45:setWidth(60);
    obj.label45:setHeight(40);
    obj.label45:setLeft(340);
    obj.label45:setTop(350);
    obj.label45:setFontFamily("Nyala");
    obj.label45:setFontSize(20);
    obj.label45:setText("Chakra");
    obj.label45:setName("label45");

    obj.edit132 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit132:setParent(obj.POPPergaminho2);
    obj.edit132:setWidth(40);
    obj.edit132:setHeight(30);
    obj.edit132:setLeft(400);
    obj.edit132:setTop(355);
    obj.edit132:setType("number");
    obj.edit132:setField("CustoPerga2");
    obj.edit132:setName("edit132");

    obj.edit133 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit133:setParent(obj.POPPergaminho2);
    obj.edit133:setWidth(40);
    obj.edit133:setHeight(30);
    obj.edit133:setLeft(390);
    obj.edit133:setTop(380);
    obj.edit133:setVisible(false);
    obj.edit133:setType("number");
    obj.edit133:setField("ChakraPerga2");
    obj.edit133:setName("edit133");

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.POPPergaminho2);
    obj.label46:setWidth(60);
    obj.label46:setHeight(40);
    obj.label46:setLeft(230);
    obj.label46:setTop(350);
    obj.label46:setFontFamily("Nyala");
    obj.label46:setFontSize(20);
    obj.label46:setText("Tipo");
    obj.label46:setName("label46");

    obj.comboBox8 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox8:setParent(obj.POPPergaminho2);
    obj.comboBox8:setLeft(275);
    obj.comboBox8:setTop(363);
    obj.comboBox8:setWidth(50);
    obj.comboBox8:setHeight(18);
    obj.comboBox8:setField("TipoPergaminho2");
    obj.comboBox8:setItems({'A', 'B', 'C', 'D', 'E'});
    obj.comboBox8:setName("comboBox8");

    obj.image22 = GUI.fromHandle(_obj_newObject("image"));
    obj.image22:setParent(obj.POPPergaminho2);
    obj.image22:setLeft(20);
    obj.image22:setTop(380);
    obj.image22:setOpacity(1.0);
    obj.image22:setWidth(150);
    obj.image22:setHeight(150);
    obj.image22:setSRC("/imagens/Pergamin.png");
    obj.image22:setName("image22");

    obj.button23 = GUI.fromHandle(_obj_newObject("button"));
    obj.button23:setParent(obj.POPPergaminho2);
    obj.button23:setLeft(20);
    obj.button23:setTop(390);
    obj.button23:setFontSize(20);
    obj.button23:setOpacity(0.0);
    obj.button23:setHeight(120);
    obj.button23:setWidth(150);
    obj.button23:setText("");
    obj.button23:setFontColor("White");
    obj.button23:setName("button23");

 
							local function Pergaminho2() 
								   
							local mesaDoPersonagem = rrpg.getMesaDe(sheet); 
				
							mesaDoPersonagem.chat:rolarDados("1d100", "[§K3]Uso do Pergaminho Medio",
								function (rolado)
								
									mesaDoPersonagem.chat:enviarMensagem(".. [§K1]".. sheet.DescriPergaminho2);
									local mesa = Firecast.getMesaDe(sheet); 
									local CustoPerga2 = mesa.meuJogador:getBarValue(2);
									CustoPerga2 = CustoPerga2 - (tonumber(sheet.CustoPerga2) or 0);
									mesa.meuJogador:requestSetBarValue(2, CustoPerga2);
							
							end);
							end;
						


    obj.button24 = GUI.fromHandle(_obj_newObject("button"));
    obj.button24:setParent(obj.POPDiverso);
    obj.button24:setLeft(984);
    obj.button24:setTop(105);
    obj.button24:setWidth(65);
    obj.button24:setHeight(80);
    obj.button24:setOpacity(0.1);
    obj.button24:setText("");
    obj.button24:setName("button24");

    obj.POPPergaminho3 = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPPergaminho3:setParent(obj.POPDiverso);
    obj.POPPergaminho3:setName("POPPergaminho3");
    obj.POPPergaminho3:setVisible(false);
    obj.POPPergaminho3:setLeft(1);
    obj.POPPergaminho3:setTop(40);
    obj.POPPergaminho3:setWidth(450);
    obj.POPPergaminho3:setHeight(520);

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.POPPergaminho3);
    obj.label47:setWidth(120);
    obj.label47:setHeight(40);
    obj.label47:setLeft(10);
    obj.label47:setTop(10);
    obj.label47:setFontFamily("Nyala");
    obj.label47:setFontSize(20);
    obj.label47:setText("Selado :");
    obj.label47:setName("label47");

    obj.edit134 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit134:setParent(obj.POPPergaminho3);
    obj.edit134:setWidth(310);
    obj.edit134:setHeight(30);
    obj.edit134:setLeft(100);
    obj.edit134:setTop(15);
    obj.edit134:setField("NomePergaminho3");
    obj.edit134:setName("edit134");

    obj.textEditor6 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.POPPergaminho3);
    obj.textEditor6:setLeft(10);
    obj.textEditor6:setTop(60);
    obj.textEditor6:setWidth(430);
    obj.textEditor6:setHeight(280);
    obj.textEditor6:setField("DescriPergaminho3");
    obj.textEditor6:setText("Este é um textEditor\n\ncom multiplas linhas");
    obj.textEditor6:setName("textEditor6");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.POPPergaminho3);
    obj.label48:setWidth(120);
    obj.label48:setHeight(40);
    obj.label48:setLeft(10);
    obj.label48:setTop(350);
    obj.label48:setFontFamily("Nyala");
    obj.label48:setFontSize(20);
    obj.label48:setText("Intensidade");
    obj.label48:setName("label48");

    obj.edit135 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit135:setParent(obj.POPPergaminho3);
    obj.edit135:setWidth(120);
    obj.edit135:setHeight(30);
    obj.edit135:setLeft(100);
    obj.edit135:setTop(355);
    obj.edit135:setEnabled(false);
    obj.edit135:setType("number");
    obj.edit135:setField("IntensidadeP3");
    obj.edit135:setName("edit135");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.POPPergaminho3);
    obj.label49:setWidth(60);
    obj.label49:setHeight(40);
    obj.label49:setLeft(340);
    obj.label49:setTop(350);
    obj.label49:setFontFamily("Nyala");
    obj.label49:setFontSize(20);
    obj.label49:setText("Chakra");
    obj.label49:setName("label49");

    obj.edit136 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit136:setParent(obj.POPPergaminho3);
    obj.edit136:setWidth(40);
    obj.edit136:setHeight(30);
    obj.edit136:setLeft(400);
    obj.edit136:setTop(355);
    obj.edit136:setType("number");
    obj.edit136:setField("CustoPerga3");
    obj.edit136:setName("edit136");

    obj.edit137 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit137:setParent(obj.POPPergaminho3);
    obj.edit137:setWidth(40);
    obj.edit137:setHeight(30);
    obj.edit137:setLeft(390);
    obj.edit137:setTop(380);
    obj.edit137:setVisible(false);
    obj.edit137:setType("number");
    obj.edit137:setField("ChakraPerga3");
    obj.edit137:setName("edit137");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.POPPergaminho3);
    obj.label50:setWidth(60);
    obj.label50:setHeight(40);
    obj.label50:setLeft(230);
    obj.label50:setTop(350);
    obj.label50:setFontFamily("Nyala");
    obj.label50:setFontSize(20);
    obj.label50:setText("Tipo");
    obj.label50:setName("label50");

    obj.comboBox9 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox9:setParent(obj.POPPergaminho3);
    obj.comboBox9:setLeft(275);
    obj.comboBox9:setTop(363);
    obj.comboBox9:setWidth(50);
    obj.comboBox9:setHeight(18);
    obj.comboBox9:setField("TipoPergaminho3");
    obj.comboBox9:setItems({'X','SS','S','A','B','C','D','E','Outros'});
    obj.comboBox9:setName("comboBox9");

    obj.image23 = GUI.fromHandle(_obj_newObject("image"));
    obj.image23:setParent(obj.POPPergaminho3);
    obj.image23:setLeft(20);
    obj.image23:setTop(380);
    obj.image23:setOpacity(1.0);
    obj.image23:setWidth(150);
    obj.image23:setHeight(150);
    obj.image23:setSRC("/imagens/Pergamin.png");
    obj.image23:setName("image23");

    obj.button25 = GUI.fromHandle(_obj_newObject("button"));
    obj.button25:setParent(obj.POPPergaminho3);
    obj.button25:setLeft(20);
    obj.button25:setTop(390);
    obj.button25:setFontSize(20);
    obj.button25:setOpacity(0.0);
    obj.button25:setHeight(120);
    obj.button25:setWidth(150);
    obj.button25:setText("");
    obj.button25:setFontColor("White");
    obj.button25:setName("button25");

 
							local function Pergaminho3() 
								   
							local mesaDoPersonagem = rrpg.getMesaDe(sheet); 
				
							mesaDoPersonagem.chat:rolarDados("1d100", "[§K4]Uso de Selamento",
								function (rolado)
								
									mesaDoPersonagem.chat:enviarMensagem(".. [§K1]".. sheet.DescriPergaminho3);
									local mesa = Firecast.getMesaDe(sheet); 
									local CustoPerga3 = mesa.meuJogador:getBarValue(2);
									CustoPerga3 = CustoPerga3 - (tonumber(sheet.CustoPerga3) or 0);
									mesa.meuJogador:requestSetBarValue(2, CustoPerga3);
							
							end);
							end;
						


    obj.button26 = GUI.fromHandle(_obj_newObject("button"));
    obj.button26:setParent(obj.POPDiverso);
    obj.button26:setLeft(907);
    obj.button26:setTop(188);
    obj.button26:setWidth(83);
    obj.button26:setHeight(80);
    obj.button26:setOpacity(0.1);
    obj.button26:setText("");
    obj.button26:setName("button26");

    obj.EstilodeCombate = GUI.fromHandle(_obj_newObject("popup"));
    obj.EstilodeCombate:setParent(obj.POPDiverso);
    obj.EstilodeCombate:setName("EstilodeCombate");
    obj.EstilodeCombate:setVisible(false);
    obj.EstilodeCombate:setLeft(1);
    obj.EstilodeCombate:setTop(40);
    obj.EstilodeCombate:setWidth(450);
    obj.EstilodeCombate:setHeight(350);

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.EstilodeCombate);
    obj.label51:setWidth(300);
    obj.label51:setHeight(40);
    obj.label51:setLeft(10);
    obj.label51:setTop(10);
    obj.label51:setFontFamily("Nyala");
    obj.label51:setFontSize(20);
    obj.label51:setText("Nome do estilo de Combate :");
    obj.label51:setName("label51");

    obj.edit138 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit138:setParent(obj.EstilodeCombate);
    obj.edit138:setWidth(210);
    obj.edit138:setHeight(30);
    obj.edit138:setLeft(230);
    obj.edit138:setTop(15);
    obj.edit138:setField("NomeEDC");
    obj.edit138:setName("edit138");

    obj.textEditor7 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.EstilodeCombate);
    obj.textEditor7:setLeft(10);
    obj.textEditor7:setTop(60);
    obj.textEditor7:setWidth(430);
    obj.textEditor7:setHeight(280);
    obj.textEditor7:setField("DEDC");
    obj.textEditor7:setText("Este é um textEditor\n\ncom multiplas linhas");
    obj.textEditor7:setName("textEditor7");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Chances");
    obj.tab2:setName("tab2");

    obj.scrollBox6 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox6:setParent(obj.tab2);
    obj.scrollBox6:setAlign("client");
    obj.scrollBox6:setName("scrollBox6");

    obj.image24 = GUI.fromHandle(_obj_newObject("image"));
    obj.image24:setParent(obj.scrollBox6);
    obj.image24:setLeft(1);
    obj.image24:setTop(1);
    obj.image24:setWidth(1000);
    obj.image24:setHeight(700);
    obj.image24:setSRC("/imagens/2.png");
    obj.image24:setName("image24");

    obj.edit139 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit139:setParent(obj.scrollBox6);
    obj.edit139:setLeft(230);
    obj.edit139:setTop(45);
    obj.edit139:setWidth(75);
    obj.edit139:setHeight(18);
    obj.edit139:setEnabled(false);
    obj.edit139:setHorzTextAlign("center");
    obj.edit139:setFontColor("#00FFFF");
    obj.edit139:setType("number");
    obj.edit139:setField("AcertoTaiTotal");
    obj.edit139:setName("edit139");

    obj.edit140 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit140:setParent(obj.scrollBox6);
    obj.edit140:setLeft(230);
    obj.edit140:setTop(70);
    obj.edit140:setWidth(75);
    obj.edit140:setHeight(18);
    obj.edit140:setEnabled(false);
    obj.edit140:setHorzTextAlign("center");
    obj.edit140:setFontColor("#00FFFF");
    obj.edit140:setType("number");
    obj.edit140:setField("AcertoNinTotal");
    obj.edit140:setName("edit140");

    obj.edit141 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit141:setParent(obj.scrollBox6);
    obj.edit141:setLeft(230);
    obj.edit141:setTop(95);
    obj.edit141:setWidth(75);
    obj.edit141:setHeight(18);
    obj.edit141:setEnabled(false);
    obj.edit141:setHorzTextAlign("center");
    obj.edit141:setFontColor("#00FFFF");
    obj.edit141:setType("number");
    obj.edit141:setField("AcertoGenTotal");
    obj.edit141:setName("edit141");

    obj.edit142 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit142:setParent(obj.scrollBox6);
    obj.edit142:setLeft(230);
    obj.edit142:setTop(145);
    obj.edit142:setWidth(75);
    obj.edit142:setHeight(18);
    obj.edit142:setEnabled(false);
    obj.edit142:setHorzTextAlign("center");
    obj.edit142:setFontColor("#00FFFF");
    obj.edit142:setType("number");
    obj.edit142:setField("EsquivaTotal");
    obj.edit142:setName("edit142");

    obj.edit143 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit143:setParent(obj.scrollBox6);
    obj.edit143:setLeft(230);
    obj.edit143:setTop(170);
    obj.edit143:setWidth(75);
    obj.edit143:setHeight(18);
    obj.edit143:setEnabled(false);
    obj.edit143:setHorzTextAlign("center");
    obj.edit143:setFontColor("#00FFFF");
    obj.edit143:setType("number");
    obj.edit143:setField("BloqueioTotal");
    obj.edit143:setName("edit143");

    obj.edit144 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit144:setParent(obj.scrollBox6);
    obj.edit144:setLeft(230);
    obj.edit144:setTop(220);
    obj.edit144:setWidth(75);
    obj.edit144:setHeight(18);
    obj.edit144:setEnabled(false);
    obj.edit144:setHorzTextAlign("center");
    obj.edit144:setFontColor("#00FFFF");
    obj.edit144:setType("number");
    obj.edit144:setField("CRTaiTotal");
    obj.edit144:setName("edit144");

    obj.edit145 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit145:setParent(obj.scrollBox6);
    obj.edit145:setLeft(230);
    obj.edit145:setTop(245);
    obj.edit145:setWidth(75);
    obj.edit145:setHeight(18);
    obj.edit145:setEnabled(false);
    obj.edit145:setHorzTextAlign("center");
    obj.edit145:setFontColor("#00FFFF");
    obj.edit145:setType("number");
    obj.edit145:setField("CRNinTotal");
    obj.edit145:setName("edit145");

    obj.edit146 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit146:setParent(obj.scrollBox6);
    obj.edit146:setLeft(230);
    obj.edit146:setTop(270);
    obj.edit146:setWidth(75);
    obj.edit146:setHeight(18);
    obj.edit146:setEnabled(false);
    obj.edit146:setHorzTextAlign("center");
    obj.edit146:setFontColor("#00FFFF");
    obj.edit146:setType("number");
    obj.edit146:setField("CRGenTotal");
    obj.edit146:setName("edit146");

    obj.edit147 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit147:setParent(obj.scrollBox6);
    obj.edit147:setLeft(230);
    obj.edit147:setTop(320);
    obj.edit147:setWidth(75);
    obj.edit147:setHeight(18);
    obj.edit147:setEnabled(false);
    obj.edit147:setHorzTextAlign("center");
    obj.edit147:setFontColor("#00FFFF");
    obj.edit147:setType("number");
    obj.edit147:setField("TurnoTotal");
    obj.edit147:setName("edit147");

    obj.edit148 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit148:setParent(obj.scrollBox6);
    obj.edit148:setLeft(230);
    obj.edit148:setTop(370);
    obj.edit148:setWidth(75);
    obj.edit148:setHeight(18);
    obj.edit148:setEnabled(true);
    obj.edit148:setHorzTextAlign("center");
    obj.edit148:setFontColor("#00FFFF");
    obj.edit148:setType("number");
    obj.edit148:setField("Atletismo");
    obj.edit148:setName("edit148");

    obj.edit149 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit149:setParent(obj.scrollBox6);
    obj.edit149:setLeft(230);
    obj.edit149:setTop(395);
    obj.edit149:setWidth(75);
    obj.edit149:setHeight(18);
    obj.edit149:setEnabled(true);
    obj.edit149:setHorzTextAlign("center");
    obj.edit149:setFontColor("#00FFFF");
    obj.edit149:setType("number");
    obj.edit149:setField("Raciocinio");
    obj.edit149:setName("edit149");

    obj.edit150 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit150:setParent(obj.scrollBox6);
    obj.edit150:setLeft(230);
    obj.edit150:setTop(420);
    obj.edit150:setWidth(75);
    obj.edit150:setHeight(18);
    obj.edit150:setEnabled(true);
    obj.edit150:setHorzTextAlign("center");
    obj.edit150:setFontColor("#00FFFF");
    obj.edit150:setType("number");
    obj.edit150:setField("Percepcao");
    obj.edit150:setName("edit150");

    obj.edit151 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit151:setParent(obj.scrollBox6);
    obj.edit151:setLeft(230);
    obj.edit151:setTop(445);
    obj.edit151:setWidth(75);
    obj.edit151:setHeight(18);
    obj.edit151:setEnabled(true);
    obj.edit151:setHorzTextAlign("center");
    obj.edit151:setFontColor("#00FFFF");
    obj.edit151:setType("number");
    obj.edit151:setField("Furtividade");
    obj.edit151:setName("edit151");

    obj.edit152 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit152:setParent(obj.scrollBox6);
    obj.edit152:setLeft(230);
    obj.edit152:setTop(470);
    obj.edit152:setWidth(75);
    obj.edit152:setHeight(18);
    obj.edit152:setEnabled(true);
    obj.edit152:setHorzTextAlign("center");
    obj.edit152:setFontColor("#00FFFF");
    obj.edit152:setType("number");
    obj.edit152:setField("Vigor");
    obj.edit152:setName("edit152");

    obj.edit153 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit153:setParent(obj.scrollBox6);
    obj.edit153:setLeft(430);
    obj.edit153:setTop(370);
    obj.edit153:setWidth(75);
    obj.edit153:setHeight(18);
    obj.edit153:setVisible(false);
    obj.edit153:setEnabled(false);
    obj.edit153:setHorzTextAlign("center");
    obj.edit153:setFontColor("#00FFFF");
    obj.edit153:setType("number");
    obj.edit153:setField("GAtletismo");
    obj.edit153:setName("edit153");

    obj.edit154 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit154:setParent(obj.scrollBox6);
    obj.edit154:setLeft(430);
    obj.edit154:setTop(395);
    obj.edit154:setWidth(75);
    obj.edit154:setHeight(18);
    obj.edit154:setVisible(false);
    obj.edit154:setEnabled(false);
    obj.edit154:setHorzTextAlign("center");
    obj.edit154:setFontColor("#00FFFF");
    obj.edit154:setType("number");
    obj.edit154:setField("GRaciocinio");
    obj.edit154:setName("edit154");

    obj.edit155 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit155:setParent(obj.scrollBox6);
    obj.edit155:setLeft(430);
    obj.edit155:setTop(420);
    obj.edit155:setWidth(75);
    obj.edit155:setHeight(18);
    obj.edit155:setVisible(false);
    obj.edit155:setEnabled(false);
    obj.edit155:setHorzTextAlign("center");
    obj.edit155:setFontColor("#00FFFF");
    obj.edit155:setType("number");
    obj.edit155:setField("GPercepcao");
    obj.edit155:setName("edit155");

    obj.edit156 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit156:setParent(obj.scrollBox6);
    obj.edit156:setLeft(430);
    obj.edit156:setTop(445);
    obj.edit156:setWidth(75);
    obj.edit156:setHeight(18);
    obj.edit156:setVisible(false);
    obj.edit156:setEnabled(false);
    obj.edit156:setHorzTextAlign("center");
    obj.edit156:setFontColor("#00FFFF");
    obj.edit156:setType("number");
    obj.edit156:setField("GFurtividade");
    obj.edit156:setName("edit156");

    obj.edit157 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit157:setParent(obj.scrollBox6);
    obj.edit157:setLeft(430);
    obj.edit157:setTop(470);
    obj.edit157:setWidth(75);
    obj.edit157:setHeight(18);
    obj.edit157:setVisible(false);
    obj.edit157:setEnabled(false);
    obj.edit157:setHorzTextAlign("center");
    obj.edit157:setFontColor("#00FFFF");
    obj.edit157:setType("number");
    obj.edit157:setField("GVigor");
    obj.edit157:setName("edit157");

    obj.edit158 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit158:setParent(obj.scrollBox6);
    obj.edit158:setLeft(330);
    obj.edit158:setTop(370);
    obj.edit158:setWidth(75);
    obj.edit158:setHeight(18);
    obj.edit158:setEnabled(false);
    obj.edit158:setHorzTextAlign("center");
    obj.edit158:setFontColor("#00FFFF");
    obj.edit158:setType("number");
    obj.edit158:setField("AtletismoTotal");
    obj.edit158:setName("edit158");

    obj.edit159 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit159:setParent(obj.scrollBox6);
    obj.edit159:setLeft(330);
    obj.edit159:setTop(395);
    obj.edit159:setWidth(75);
    obj.edit159:setHeight(18);
    obj.edit159:setEnabled(false);
    obj.edit159:setHorzTextAlign("center");
    obj.edit159:setFontColor("#00FFFF");
    obj.edit159:setType("number");
    obj.edit159:setField("RaciocinioTotal");
    obj.edit159:setName("edit159");

    obj.edit160 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit160:setParent(obj.scrollBox6);
    obj.edit160:setLeft(330);
    obj.edit160:setTop(420);
    obj.edit160:setWidth(75);
    obj.edit160:setHeight(18);
    obj.edit160:setEnabled(false);
    obj.edit160:setHorzTextAlign("center");
    obj.edit160:setFontColor("#00FFFF");
    obj.edit160:setType("number");
    obj.edit160:setField("PercepcaoTotal");
    obj.edit160:setName("edit160");

    obj.edit161 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit161:setParent(obj.scrollBox6);
    obj.edit161:setLeft(330);
    obj.edit161:setTop(445);
    obj.edit161:setWidth(75);
    obj.edit161:setHeight(18);
    obj.edit161:setEnabled(false);
    obj.edit161:setHorzTextAlign("center");
    obj.edit161:setFontColor("#00FFFF");
    obj.edit161:setType("number");
    obj.edit161:setField("FurtividadeTotal");
    obj.edit161:setName("edit161");

    obj.edit162 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit162:setParent(obj.scrollBox6);
    obj.edit162:setLeft(330);
    obj.edit162:setTop(470);
    obj.edit162:setWidth(75);
    obj.edit162:setHeight(18);
    obj.edit162:setEnabled(false);
    obj.edit162:setHorzTextAlign("center");
    obj.edit162:setFontColor("#00FFFF");
    obj.edit162:setType("number");
    obj.edit162:setField("VigorTotal");
    obj.edit162:setName("edit162");

    obj.edit163 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit163:setParent(obj.scrollBox6);
    obj.edit163:setLeft(530);
    obj.edit163:setTop(370);
    obj.edit163:setWidth(75);
    obj.edit163:setHeight(18);
    obj.edit163:setVisible(false);
    obj.edit163:setEnabled(false);
    obj.edit163:setHorzTextAlign("center");
    obj.edit163:setFontColor("#00FFFF");
    obj.edit163:setType("number");
    obj.edit163:setField("SAtletismo");
    obj.edit163:setName("edit163");

    obj.edit164 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit164:setParent(obj.scrollBox6);
    obj.edit164:setLeft(530);
    obj.edit164:setTop(395);
    obj.edit164:setWidth(75);
    obj.edit164:setHeight(18);
    obj.edit164:setVisible(false);
    obj.edit164:setEnabled(false);
    obj.edit164:setHorzTextAlign("center");
    obj.edit164:setFontColor("#00FFFF");
    obj.edit164:setType("number");
    obj.edit164:setField("SRaciocinio");
    obj.edit164:setName("edit164");

    obj.edit165 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit165:setParent(obj.scrollBox6);
    obj.edit165:setLeft(530);
    obj.edit165:setTop(420);
    obj.edit165:setWidth(75);
    obj.edit165:setHeight(18);
    obj.edit165:setVisible(false);
    obj.edit165:setEnabled(false);
    obj.edit165:setHorzTextAlign("center");
    obj.edit165:setFontColor("#00FFFF");
    obj.edit165:setType("number");
    obj.edit165:setField("SPercepcao");
    obj.edit165:setName("edit165");

    obj.edit166 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit166:setParent(obj.scrollBox6);
    obj.edit166:setLeft(530);
    obj.edit166:setTop(445);
    obj.edit166:setWidth(75);
    obj.edit166:setHeight(18);
    obj.edit166:setVisible(false);
    obj.edit166:setEnabled(false);
    obj.edit166:setHorzTextAlign("center");
    obj.edit166:setFontColor("#00FFFF");
    obj.edit166:setType("number");
    obj.edit166:setField("SFurtividade");
    obj.edit166:setName("edit166");

    obj.edit167 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit167:setParent(obj.scrollBox6);
    obj.edit167:setLeft(530);
    obj.edit167:setTop(470);
    obj.edit167:setWidth(75);
    obj.edit167:setHeight(18);
    obj.edit167:setVisible(false);
    obj.edit167:setEnabled(false);
    obj.edit167:setHorzTextAlign("center");
    obj.edit167:setFontColor("#00FFFF");
    obj.edit167:setType("number");
    obj.edit167:setField("SVigor");
    obj.edit167:setName("edit167");

    obj.edit168 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit168:setParent(obj.scrollBox6);
    obj.edit168:setLeft(330);
    obj.edit168:setTop(45);
    obj.edit168:setWidth(85);
    obj.edit168:setHeight(18);
    obj.edit168:setEnabled(false);
    obj.edit168:setVisible(false);
    obj.edit168:setType("number");
    obj.edit168:setField("GAcertoTai");
    obj.edit168:setName("edit168");

    obj.edit169 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit169:setParent(obj.scrollBox6);
    obj.edit169:setLeft(330);
    obj.edit169:setTop(70);
    obj.edit169:setWidth(85);
    obj.edit169:setHeight(18);
    obj.edit169:setEnabled(false);
    obj.edit169:setVisible(false);
    obj.edit169:setType("number");
    obj.edit169:setField("GAcertoNin");
    obj.edit169:setName("edit169");

    obj.edit170 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit170:setParent(obj.scrollBox6);
    obj.edit170:setLeft(330);
    obj.edit170:setTop(95);
    obj.edit170:setWidth(85);
    obj.edit170:setHeight(18);
    obj.edit170:setEnabled(false);
    obj.edit170:setVisible(false);
    obj.edit170:setType("number");
    obj.edit170:setField("GAcertoGen");
    obj.edit170:setName("edit170");

    obj.edit171 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit171:setParent(obj.scrollBox6);
    obj.edit171:setLeft(330);
    obj.edit171:setTop(145);
    obj.edit171:setWidth(85);
    obj.edit171:setHeight(18);
    obj.edit171:setEnabled(false);
    obj.edit171:setVisible(false);
    obj.edit171:setType("number");
    obj.edit171:setField("GEsquiva");
    obj.edit171:setName("edit171");

    obj.edit172 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit172:setParent(obj.scrollBox6);
    obj.edit172:setLeft(330);
    obj.edit172:setTop(170);
    obj.edit172:setWidth(85);
    obj.edit172:setHeight(18);
    obj.edit172:setEnabled(false);
    obj.edit172:setVisible(false);
    obj.edit172:setType("number");
    obj.edit172:setField("GBloqueio");
    obj.edit172:setName("edit172");

    obj.edit173 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit173:setParent(obj.scrollBox6);
    obj.edit173:setLeft(330);
    obj.edit173:setTop(220);
    obj.edit173:setWidth(85);
    obj.edit173:setHeight(18);
    obj.edit173:setEnabled(false);
    obj.edit173:setVisible(false);
    obj.edit173:setType("number");
    obj.edit173:setField("GCRTai");
    obj.edit173:setName("edit173");

    obj.edit174 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit174:setParent(obj.scrollBox6);
    obj.edit174:setLeft(330);
    obj.edit174:setTop(245);
    obj.edit174:setWidth(85);
    obj.edit174:setHeight(18);
    obj.edit174:setEnabled(false);
    obj.edit174:setVisible(false);
    obj.edit174:setType("number");
    obj.edit174:setField("GCRNin");
    obj.edit174:setName("edit174");

    obj.edit175 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit175:setParent(obj.scrollBox6);
    obj.edit175:setLeft(330);
    obj.edit175:setTop(270);
    obj.edit175:setWidth(85);
    obj.edit175:setHeight(18);
    obj.edit175:setEnabled(false);
    obj.edit175:setVisible(false);
    obj.edit175:setType("number");
    obj.edit175:setField("GCRGen");
    obj.edit175:setName("edit175");

    obj.edit176 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit176:setParent(obj.scrollBox6);
    obj.edit176:setLeft(330);
    obj.edit176:setTop(320);
    obj.edit176:setWidth(85);
    obj.edit176:setHeight(18);
    obj.edit176:setEnabled(false);
    obj.edit176:setVisible(false);
    obj.edit176:setType("number");
    obj.edit176:setField("GTurno");
    obj.edit176:setName("edit176");

    obj.button27 = GUI.fromHandle(_obj_newObject("button"));
    obj.button27:setParent(obj.scrollBox6);
    obj.button27:setLeft(430);
    obj.button27:setTop(370);
    obj.button27:setWidth(85);
    obj.button27:setHeight(20);
    obj.button27:setFontSize(12);
    obj.button27:setFontColor("#00FFFF");
    obj.button27:setText("Atletismo");
    obj.button27:setName("button27");


						local function RolarTesteAtletismo()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.AtletismoTotal = sheet.AtletismoTotal or 0;                        
							mesaDoPersonagem.chat:rolarDados("1d20 + " .. sheet.AtletismoTotal, "[§K2]Teste de Atletismo"); 
						end; 	   
					


    obj.button28 = GUI.fromHandle(_obj_newObject("button"));
    obj.button28:setParent(obj.scrollBox6);
    obj.button28:setLeft(430);
    obj.button28:setTop(395);
    obj.button28:setWidth(85);
    obj.button28:setHeight(20);
    obj.button28:setFontSize(12);
    obj.button28:setFontColor("#00FFFF");
    obj.button28:setText("Sabedoria");
    obj.button28:setName("button28");


						local function RolarTesteSabedoria()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.RaciocinioTotal = sheet.RaciocinioTotal or 0;                        
							mesaDoPersonagem.chat:rolarDados("1d20 + " .. sheet.RaciocinioTotal, "[§K2]Teste de Raciocinio"); 
						end; 	   
					


    obj.button29 = GUI.fromHandle(_obj_newObject("button"));
    obj.button29:setParent(obj.scrollBox6);
    obj.button29:setLeft(430);
    obj.button29:setTop(420);
    obj.button29:setWidth(85);
    obj.button29:setHeight(20);
    obj.button29:setFontSize(12);
    obj.button29:setFontColor("#00FFFF");
    obj.button29:setText("Percepção");
    obj.button29:setName("button29");


						local function RolarTestePercepcao()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.PercepcaoTotal = sheet.PercepcaoTotal or 0;                        
							mesaDoPersonagem.chat:rolarDados("1d20 + " .. sheet.PercepcaoTotal, "[§K2]Teste de Percepcao"); 
						end; 	   
					


    obj.button30 = GUI.fromHandle(_obj_newObject("button"));
    obj.button30:setParent(obj.scrollBox6);
    obj.button30:setLeft(430);
    obj.button30:setTop(445);
    obj.button30:setWidth(85);
    obj.button30:setHeight(20);
    obj.button30:setFontSize(12);
    obj.button30:setFontColor("#00FFFF");
    obj.button30:setText("Acrobacia");
    obj.button30:setName("button30");


						local function RolarTesteAcrobacia()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.FurtividadeTotal = sheet.FurtividadeTotal or 0;                        
							mesaDoPersonagem.chat:rolarDados("1d20 + " .. sheet.FurtividadeTotal, "[§K2]Teste de Furtividade"); 
						end; 	   
					


    obj.button31 = GUI.fromHandle(_obj_newObject("button"));
    obj.button31:setParent(obj.scrollBox6);
    obj.button31:setLeft(430);
    obj.button31:setTop(470);
    obj.button31:setWidth(85);
    obj.button31:setHeight(20);
    obj.button31:setFontSize(12);
    obj.button31:setFontColor("#00FFFF");
    obj.button31:setText("Vigor");
    obj.button31:setName("button31");


						local function RolarTesteVigor()      
							local mesaDoPersonagem = Firecast.getMesaDe(sheet);      
							sheet.VigorTotal = sheet.VigorTotal or 0;                        
							mesaDoPersonagem.chat:rolarDados("1d20 + " .. sheet.VigorTotal, "[§K2]Teste de Vigor"); 
						end; 	   
					


    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.scrollBox6);
    obj.dataLink12:setFields({'Graduacao', 'Forca', 'Inteligencia', 'Sabedoria', 'Habilidade', 'Resistencia', 'Atletismo', 'Raciocinio', 'Percepcao', 'Furtividade', 'Vigor'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.scrollBox6);
    obj.dataLink13:setFields({'GAcertoTai', 'GAcertoNin', 'GAcertoGen', 'GEsquiva', 'GBloqueio', 'GCRTai', 'GCRNin', 'GCRGen', 'GTurno',
				'CAT', 'CAN', 'CAG', 'CEsq', 'CBloq', 'CCRT', 'CCRN', 'CCRG', 'DAcertoTai', 'DAcertoNin', 'DAcertoGen', 'DEsquiva', 'DBloqueio', 'DCriticalTai', 'DCriticalNin', 'DCriticalGen'});
    obj.dataLink13:setName("dataLink13");

    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Equipamentos");
    obj.tab3:setName("tab3");

    obj.scrollBox7 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox7:setParent(obj.tab3);
    obj.scrollBox7:setAlign("client");
    obj.scrollBox7:setName("scrollBox7");

    obj.image25 = GUI.fromHandle(_obj_newObject("image"));
    obj.image25:setParent(obj.scrollBox7);
    obj.image25:setLeft(1);
    obj.image25:setTop(1);
    obj.image25:setWidth(1000);
    obj.image25:setHeight(700);
    obj.image25:setSRC("/imagens/3.png");
    obj.image25:setName("image25");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.scrollBox7);
    obj.richEdit1:setLeft(22);
    obj.richEdit1:setTop(90);
    obj.richEdit1:setWidth(320);
    obj.richEdit1:setHeight(340);
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "#00000000");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "white");
    obj.richEdit1:setField("Historia");
    obj.richEdit1:setName("richEdit1");

    obj.button32 = GUI.fromHandle(_obj_newObject("button"));
    obj.button32:setParent(obj.scrollBox7);
    obj.button32:setLeft(430);
    obj.button32:setTop(120);
    obj.button32:setWidth(120);
    obj.button32:setHeight(100);
    obj.button32:setOpacity(0.0);
    obj.button32:setText("");
    obj.button32:setName("button32");

    obj.POPArma = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPArma:setParent(obj.scrollBox7);
    obj.POPArma:setName("POPArma");
    obj.POPArma:setVisible(false);
    obj.POPArma:setLeft(1);
    obj.POPArma:setTop(40);
    obj.POPArma:setWidth(500);
    obj.POPArma:setHeight(550);

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.POPArma);
    obj.label52:setLeft(20);
    obj.label52:setTop(20);
    obj.label52:setFontFamily("Nyala");
    obj.label52:setFontSize(20);
    obj.label52:setText("Dano Tai");
    obj.label52:setName("label52");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.POPArma);
    obj.label53:setLeft(20);
    obj.label53:setTop(60);
    obj.label53:setFontFamily("Nyala");
    obj.label53:setFontSize(20);
    obj.label53:setText("Dano Nin");
    obj.label53:setName("label53");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.POPArma);
    obj.label54:setLeft(20);
    obj.label54:setTop(100);
    obj.label54:setFontFamily("Nyala");
    obj.label54:setFontSize(20);
    obj.label54:setText("Dano Gen");
    obj.label54:setName("label54");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.POPArma);
    obj.label55:setLeft(20);
    obj.label55:setTop(140);
    obj.label55:setFontFamily("Nyala");
    obj.label55:setFontSize(20);
    obj.label55:setText("Dano Armado");
    obj.label55:setName("label55");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.POPArma);
    obj.label56:setLeft(200);
    obj.label56:setTop(20);
    obj.label56:setFontFamily("Nyala");
    obj.label56:setFontSize(20);
    obj.label56:setText("Dano Elemental");
    obj.label56:setName("label56");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.POPArma);
    obj.label57:setLeft(200);
    obj.label57:setTop(60);
    obj.label57:setFontFamily("Nyala");
    obj.label57:setFontSize(20);
    obj.label57:setText("HP");
    obj.label57:setName("label57");

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.POPArma);
    obj.label58:setLeft(200);
    obj.label58:setTop(100);
    obj.label58:setFontFamily("Nyala");
    obj.label58:setFontSize(20);
    obj.label58:setText("Chakra");
    obj.label58:setName("label58");

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.POPArma);
    obj.label59:setLeft(20);
    obj.label59:setTop(200);
    obj.label59:setWidth(300);
    obj.label59:setFontFamily("Nyala");
    obj.label59:setFontSize(20);
    obj.label59:setText("Habilidade da Espada");
    obj.label59:setName("label59");

    obj.label60 = GUI.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.POPArma);
    obj.label60:setLeft(20);
    obj.label60:setTop(300);
    obj.label60:setFontFamily("Nyala");
    obj.label60:setFontSize(20);
    obj.label60:setText("Shinkai");
    obj.label60:setName("label60");

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.POPArma);
    obj.label61:setLeft(20);
    obj.label61:setTop(400);
    obj.label61:setFontFamily("Nyala");
    obj.label61:setFontSize(20);
    obj.label61:setText("Bankai");
    obj.label61:setName("label61");

    obj.edit177 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit177:setParent(obj.POPArma);
    obj.edit177:setLeft(110);
    obj.edit177:setTop(16);
    obj.edit177:setWidth(85);
    obj.edit177:setHeight(25);
    obj.edit177:setType("number");
    obj.edit177:setField("ArmaDT");
    obj.edit177:setName("edit177");

    obj.edit178 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit178:setParent(obj.POPArma);
    obj.edit178:setLeft(110);
    obj.edit178:setTop(56);
    obj.edit178:setWidth(85);
    obj.edit178:setHeight(25);
    obj.edit178:setType("number");
    obj.edit178:setField("ArmaDN");
    obj.edit178:setName("edit178");

    obj.edit179 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit179:setParent(obj.POPArma);
    obj.edit179:setLeft(110);
    obj.edit179:setTop(96);
    obj.edit179:setWidth(85);
    obj.edit179:setHeight(25);
    obj.edit179:setType("number");
    obj.edit179:setField("ArmaDG");
    obj.edit179:setName("edit179");

    obj.edit180 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit180:setParent(obj.POPArma);
    obj.edit180:setLeft(130);
    obj.edit180:setTop(136);
    obj.edit180:setWidth(85);
    obj.edit180:setHeight(25);
    obj.edit180:setType("number");
    obj.edit180:setField("ArmaDA");
    obj.edit180:setName("edit180");

    obj.edit181 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit181:setParent(obj.POPArma);
    obj.edit181:setLeft(360);
    obj.edit181:setTop(16);
    obj.edit181:setWidth(85);
    obj.edit181:setHeight(25);
    obj.edit181:setType("number");
    obj.edit181:setField("ArmaDE");
    obj.edit181:setName("edit181");

    obj.edit182 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit182:setParent(obj.POPArma);
    obj.edit182:setLeft(360);
    obj.edit182:setTop(56);
    obj.edit182:setWidth(85);
    obj.edit182:setHeight(25);
    obj.edit182:setType("number");
    obj.edit182:setField("ArmaHP");
    obj.edit182:setName("edit182");

    obj.edit183 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit183:setParent(obj.POPArma);
    obj.edit183:setLeft(360);
    obj.edit183:setTop(96);
    obj.edit183:setWidth(85);
    obj.edit183:setHeight(25);
    obj.edit183:setType("number");
    obj.edit183:setField("ArmaChakra");
    obj.edit183:setName("edit183");

    obj.textEditor8 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.POPArma);
    obj.textEditor8:setLeft(20);
    obj.textEditor8:setTop(223);
    obj.textEditor8:setWidth(440);
    obj.textEditor8:setHeight(70);
    obj.textEditor8:setField("HDE");
    obj.textEditor8:setName("textEditor8");

    obj.textEditor9 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.POPArma);
    obj.textEditor9:setLeft(20);
    obj.textEditor9:setTop(320);
    obj.textEditor9:setWidth(440);
    obj.textEditor9:setHeight(70);
    obj.textEditor9:setField("Shinkai");
    obj.textEditor9:setName("textEditor9");

    obj.textEditor10 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor10:setParent(obj.POPArma);
    obj.textEditor10:setLeft(20);
    obj.textEditor10:setTop(420);
    obj.textEditor10:setWidth(440);
    obj.textEditor10:setHeight(100);
    obj.textEditor10:setField("Bankai");
    obj.textEditor10:setName("textEditor10");

    obj.button33 = GUI.fromHandle(_obj_newObject("button"));
    obj.button33:setParent(obj.scrollBox7);
    obj.button33:setLeft(610);
    obj.button33:setTop(120);
    obj.button33:setWidth(160);
    obj.button33:setHeight(100);
    obj.button33:setOpacity(0.0);
    obj.button33:setText("");
    obj.button33:setName("button33");

    obj.POPBandana = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPBandana:setParent(obj.scrollBox7);
    obj.POPBandana:setName("POPBandana");
    obj.POPBandana:setVisible(false);
    obj.POPBandana:setLeft(1);
    obj.POPBandana:setTop(40);
    obj.POPBandana:setWidth(300);
    obj.POPBandana:setHeight(300);

    obj.label62 = GUI.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.POPBandana);
    obj.label62:setLeft(20);
    obj.label62:setTop(20);
    obj.label62:setFontFamily("Nyala");
    obj.label62:setFontSize(20);
    obj.label62:setText("HP");
    obj.label62:setName("label62");

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.POPBandana);
    obj.label63:setLeft(20);
    obj.label63:setTop(60);
    obj.label63:setFontFamily("Nyala");
    obj.label63:setFontSize(20);
    obj.label63:setText("Chakra");
    obj.label63:setName("label63");

    obj.label64 = GUI.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.POPBandana);
    obj.label64:setLeft(20);
    obj.label64:setTop(100);
    obj.label64:setFontFamily("Nyala");
    obj.label64:setFontSize(20);
    obj.label64:setText("Redução");
    obj.label64:setName("label64");

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.POPBandana);
    obj.label65:setLeft(20);
    obj.label65:setTop(140);
    obj.label65:setWidth(300);
    obj.label65:setFontFamily("Nyala");
    obj.label65:setFontSize(20);
    obj.label65:setText("Passiva");
    obj.label65:setName("label65");

    obj.edit184 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit184:setParent(obj.POPBandana);
    obj.edit184:setLeft(110);
    obj.edit184:setTop(16);
    obj.edit184:setWidth(85);
    obj.edit184:setHeight(25);
    obj.edit184:setType("number");
    obj.edit184:setField("BandanaHP");
    obj.edit184:setName("edit184");

    obj.edit185 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit185:setParent(obj.POPBandana);
    obj.edit185:setLeft(110);
    obj.edit185:setTop(56);
    obj.edit185:setWidth(85);
    obj.edit185:setHeight(25);
    obj.edit185:setType("number");
    obj.edit185:setField("BandanaChakra");
    obj.edit185:setName("edit185");

    obj.edit186 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit186:setParent(obj.POPBandana);
    obj.edit186:setLeft(110);
    obj.edit186:setTop(96);
    obj.edit186:setWidth(85);
    obj.edit186:setHeight(25);
    obj.edit186:setType("number");
    obj.edit186:setField("BandanaReducao");
    obj.edit186:setName("edit186");

    obj.textEditor11 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor11:setParent(obj.POPBandana);
    obj.textEditor11:setLeft(20);
    obj.textEditor11:setTop(163);
    obj.textEditor11:setWidth(260);
    obj.textEditor11:setHeight(110);
    obj.textEditor11:setField("BandanaPassiva");
    obj.textEditor11:setName("textEditor11");

    obj.button34 = GUI.fromHandle(_obj_newObject("button"));
    obj.button34:setParent(obj.scrollBox7);
    obj.button34:setLeft(430);
    obj.button34:setTop(225);
    obj.button34:setWidth(120);
    obj.button34:setHeight(115);
    obj.button34:setOpacity(0.0);
    obj.button34:setText("");
    obj.button34:setName("button34");

    obj.POPColete = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPColete:setParent(obj.scrollBox7);
    obj.POPColete:setName("POPColete");
    obj.POPColete:setVisible(false);
    obj.POPColete:setLeft(1);
    obj.POPColete:setTop(40);
    obj.POPColete:setWidth(300);
    obj.POPColete:setHeight(300);

    obj.label66 = GUI.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.POPColete);
    obj.label66:setLeft(20);
    obj.label66:setTop(20);
    obj.label66:setFontFamily("Nyala");
    obj.label66:setFontSize(20);
    obj.label66:setText("HP");
    obj.label66:setName("label66");

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.POPColete);
    obj.label67:setLeft(20);
    obj.label67:setTop(60);
    obj.label67:setFontFamily("Nyala");
    obj.label67:setFontSize(20);
    obj.label67:setText("Chakra");
    obj.label67:setName("label67");

    obj.label68 = GUI.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.POPColete);
    obj.label68:setLeft(20);
    obj.label68:setTop(100);
    obj.label68:setFontFamily("Nyala");
    obj.label68:setFontSize(20);
    obj.label68:setText("Redução");
    obj.label68:setName("label68");

    obj.label69 = GUI.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.POPColete);
    obj.label69:setLeft(20);
    obj.label69:setTop(140);
    obj.label69:setWidth(300);
    obj.label69:setFontFamily("Nyala");
    obj.label69:setFontSize(20);
    obj.label69:setText("Passiva");
    obj.label69:setName("label69");

    obj.edit187 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit187:setParent(obj.POPColete);
    obj.edit187:setLeft(110);
    obj.edit187:setTop(16);
    obj.edit187:setWidth(85);
    obj.edit187:setHeight(25);
    obj.edit187:setType("number");
    obj.edit187:setField("ColeteHP");
    obj.edit187:setName("edit187");

    obj.edit188 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit188:setParent(obj.POPColete);
    obj.edit188:setLeft(110);
    obj.edit188:setTop(56);
    obj.edit188:setWidth(85);
    obj.edit188:setHeight(25);
    obj.edit188:setType("number");
    obj.edit188:setField("ColeteChakra");
    obj.edit188:setName("edit188");

    obj.edit189 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit189:setParent(obj.POPColete);
    obj.edit189:setLeft(110);
    obj.edit189:setTop(96);
    obj.edit189:setWidth(85);
    obj.edit189:setHeight(25);
    obj.edit189:setType("number");
    obj.edit189:setField("ColeteReducao");
    obj.edit189:setName("edit189");

    obj.textEditor12 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor12:setParent(obj.POPColete);
    obj.textEditor12:setLeft(20);
    obj.textEditor12:setTop(163);
    obj.textEditor12:setWidth(260);
    obj.textEditor12:setHeight(110);
    obj.textEditor12:setField("ColetePassiva");
    obj.textEditor12:setName("textEditor12");

    obj.button35 = GUI.fromHandle(_obj_newObject("button"));
    obj.button35:setParent(obj.scrollBox7);
    obj.button35:setLeft(610);
    obj.button35:setTop(232);
    obj.button35:setWidth(160);
    obj.button35:setHeight(100);
    obj.button35:setOpacity(0.0);
    obj.button35:setText("");
    obj.button35:setName("button35");

    obj.POPAcessorio = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPAcessorio:setParent(obj.scrollBox7);
    obj.POPAcessorio:setName("POPAcessorio");
    obj.POPAcessorio:setVisible(false);
    obj.POPAcessorio:setLeft(1);
    obj.POPAcessorio:setTop(40);
    obj.POPAcessorio:setWidth(500);
    obj.POPAcessorio:setHeight(350);

    obj.label70 = GUI.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.POPAcessorio);
    obj.label70:setLeft(20);
    obj.label70:setTop(20);
    obj.label70:setFontFamily("Nyala");
    obj.label70:setFontSize(20);
    obj.label70:setText("Dano Tai");
    obj.label70:setName("label70");

    obj.label71 = GUI.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.POPAcessorio);
    obj.label71:setLeft(20);
    obj.label71:setTop(60);
    obj.label71:setFontFamily("Nyala");
    obj.label71:setFontSize(20);
    obj.label71:setText("Dano Nin");
    obj.label71:setName("label71");

    obj.label72 = GUI.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.POPAcessorio);
    obj.label72:setLeft(20);
    obj.label72:setTop(100);
    obj.label72:setFontFamily("Nyala");
    obj.label72:setFontSize(20);
    obj.label72:setText("Dano Gen");
    obj.label72:setName("label72");

    obj.label73 = GUI.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.POPAcessorio);
    obj.label73:setLeft(230);
    obj.label73:setTop(20);
    obj.label73:setFontFamily("Nyala");
    obj.label73:setFontSize(20);
    obj.label73:setText("Dano Elemental");
    obj.label73:setName("label73");

    obj.label74 = GUI.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.POPAcessorio);
    obj.label74:setLeft(230);
    obj.label74:setTop(60);
    obj.label74:setFontFamily("Nyala");
    obj.label74:setFontSize(20);
    obj.label74:setText("HP");
    obj.label74:setName("label74");

    obj.label75 = GUI.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.POPAcessorio);
    obj.label75:setLeft(230);
    obj.label75:setTop(100);
    obj.label75:setFontFamily("Nyala");
    obj.label75:setFontSize(20);
    obj.label75:setText("Chakra");
    obj.label75:setName("label75");

    obj.label76 = GUI.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.POPAcessorio);
    obj.label76:setLeft(20);
    obj.label76:setTop(140);
    obj.label76:setWidth(300);
    obj.label76:setFontFamily("Nyala");
    obj.label76:setFontSize(20);
    obj.label76:setText("Reiatsu");
    obj.label76:setName("label76");

    obj.label77 = GUI.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.POPAcessorio);
    obj.label77:setLeft(230);
    obj.label77:setTop(140);
    obj.label77:setFontFamily("Nyala");
    obj.label77:setFontSize(20);
    obj.label77:setText("Outros");
    obj.label77:setName("label77");

    obj.edit190 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit190:setParent(obj.POPAcessorio);
    obj.edit190:setLeft(110);
    obj.edit190:setTop(16);
    obj.edit190:setWidth(85);
    obj.edit190:setHeight(25);
    obj.edit190:setType("number");
    obj.edit190:setField("AcessorioDT");
    obj.edit190:setName("edit190");

    obj.edit191 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit191:setParent(obj.POPAcessorio);
    obj.edit191:setLeft(110);
    obj.edit191:setTop(56);
    obj.edit191:setWidth(85);
    obj.edit191:setHeight(25);
    obj.edit191:setType("number");
    obj.edit191:setField("AcessorioDN");
    obj.edit191:setName("edit191");

    obj.edit192 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit192:setParent(obj.POPAcessorio);
    obj.edit192:setLeft(110);
    obj.edit192:setTop(96);
    obj.edit192:setWidth(85);
    obj.edit192:setHeight(25);
    obj.edit192:setType("number");
    obj.edit192:setField("AcessorioDG");
    obj.edit192:setName("edit192");

    obj.edit193 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit193:setParent(obj.POPAcessorio);
    obj.edit193:setLeft(360);
    obj.edit193:setTop(16);
    obj.edit193:setWidth(85);
    obj.edit193:setHeight(25);
    obj.edit193:setType("number");
    obj.edit193:setField("AcessorioDE");
    obj.edit193:setName("edit193");

    obj.edit194 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit194:setParent(obj.POPAcessorio);
    obj.edit194:setLeft(360);
    obj.edit194:setTop(56);
    obj.edit194:setWidth(85);
    obj.edit194:setHeight(25);
    obj.edit194:setType("number");
    obj.edit194:setField("AcessorioHP");
    obj.edit194:setName("edit194");

    obj.edit195 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit195:setParent(obj.POPAcessorio);
    obj.edit195:setLeft(360);
    obj.edit195:setTop(96);
    obj.edit195:setWidth(85);
    obj.edit195:setHeight(25);
    obj.edit195:setType("number");
    obj.edit195:setField("AcessorioChakra");
    obj.edit195:setName("edit195");

    obj.edit196 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit196:setParent(obj.POPAcessorio);
    obj.edit196:setLeft(110);
    obj.edit196:setTop(136);
    obj.edit196:setWidth(85);
    obj.edit196:setHeight(25);
    obj.edit196:setType("number");
    obj.edit196:setField("AcessorioReiatsu");
    obj.edit196:setName("edit196");

    obj.edit197 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit197:setParent(obj.POPAcessorio);
    obj.edit197:setLeft(360);
    obj.edit197:setTop(136);
    obj.edit197:setWidth(85);
    obj.edit197:setHeight(25);
    obj.edit197:setType("number");
    obj.edit197:setField("AcessorioOutros");
    obj.edit197:setName("edit197");

    obj.label78 = GUI.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.POPAcessorio);
    obj.label78:setLeft(20);
    obj.label78:setTop(180);
    obj.label78:setWidth(300);
    obj.label78:setFontFamily("Nyala");
    obj.label78:setFontSize(20);
    obj.label78:setText("Habilidade");
    obj.label78:setName("label78");

    obj.textEditor13 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor13:setParent(obj.POPAcessorio);
    obj.textEditor13:setLeft(20);
    obj.textEditor13:setTop(210);
    obj.textEditor13:setWidth(425);
    obj.textEditor13:setHeight(110);
    obj.textEditor13:setField("AcessorioPassiva");
    obj.textEditor13:setName("textEditor13");

    obj.button36 = GUI.fromHandle(_obj_newObject("button"));
    obj.button36:setParent(obj.scrollBox7);
    obj.button36:setLeft(30);
    obj.button36:setTop(540);
    obj.button36:setWidth(120);
    obj.button36:setHeight(115);
    obj.button36:setOpacity(0.1);
    obj.button36:setText("");
    obj.button36:setName("button36");

    obj.POPBAG = GUI.fromHandle(_obj_newObject("popup"));
    obj.POPBAG:setParent(obj.scrollBox7);
    obj.POPBAG:setName("POPBAG");
    obj.POPBAG:setVisible(false);
    obj.POPBAG:setLeft(1);
    obj.POPBAG:setTop(40);
    obj.POPBAG:setWidth(650);
    obj.POPBAG:setHeight(500);

    obj.image26 = GUI.fromHandle(_obj_newObject("image"));
    obj.image26:setParent(obj.POPBAG);
    obj.image26:setLeft(1);
    obj.image26:setTop(1);
    obj.image26:setWidth(650);
    obj.image26:setHeight(500);
    obj.image26:setSRC("/imagens/Loja.png");
    obj.image26:setName("image26");

    obj.label79 = GUI.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.POPBAG);
    obj.label79:setLeft(160);
    obj.label79:setTop(13);
    obj.label79:setHeight(25);
    obj.label79:setWidth(100);
    obj.label79:setFontColor("red");
    obj.label79:setText("Kunai");
    obj.label79:setAutoSize(true);
    obj.label79:setName("label79");

    obj.edit198 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit198:setParent(obj.POPBAG);
    obj.edit198:setLeft(200);
    obj.edit198:setTop(08);
    obj.edit198:setHeight(25);
    obj.edit198:setWidth(30);
    obj.edit198:setType("number");
    obj.edit198:setField("KunaiLimite");
    obj.edit198:setName("edit198");

    obj.label80 = GUI.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.POPBAG);
    obj.label80:setLeft(235);
    obj.label80:setTop(13);
    obj.label80:setHeight(25);
    obj.label80:setWidth(100);
    obj.label80:setFontColor("red");
    obj.label80:setText("Shuriken");
    obj.label80:setAutoSize(true);
    obj.label80:setName("label80");

    obj.edit199 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit199:setParent(obj.POPBAG);
    obj.edit199:setLeft(290);
    obj.edit199:setTop(08);
    obj.edit199:setHeight(25);
    obj.edit199:setWidth(30);
    obj.edit199:setType("number");
    obj.edit199:setField("ShurikenLimite");
    obj.edit199:setName("edit199");

    obj.label81 = GUI.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.POPBAG);
    obj.label81:setLeft(325);
    obj.label81:setTop(13);
    obj.label81:setHeight(25);
    obj.label81:setWidth(100);
    obj.label81:setFontColor("red");
    obj.label81:setText("S.Fuuma");
    obj.label81:setAutoSize(true);
    obj.label81:setName("label81");

    obj.edit200 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit200:setParent(obj.POPBAG);
    obj.edit200:setLeft(380);
    obj.edit200:setTop(08);
    obj.edit200:setHeight(25);
    obj.edit200:setWidth(30);
    obj.edit200:setType("number");
    obj.edit200:setField("SFuumaLimite");
    obj.edit200:setName("edit200");

    obj.label82 = GUI.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.POPBAG);
    obj.label82:setLeft(420);
    obj.label82:setTop(13);
    obj.label82:setHeight(25);
    obj.label82:setWidth(100);
    obj.label82:setFontColor("red");
    obj.label82:setText("K.Gigante");
    obj.label82:setAutoSize(true);
    obj.label82:setName("label82");

    obj.edit201 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit201:setParent(obj.POPBAG);
    obj.edit201:setLeft(480);
    obj.edit201:setTop(08);
    obj.edit201:setHeight(25);
    obj.edit201:setWidth(30);
    obj.edit201:setType("number");
    obj.edit201:setField("KGiganteLimite");
    obj.edit201:setName("edit201");

    obj.label83 = GUI.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.POPBAG);
    obj.label83:setLeft(515);
    obj.label83:setTop(13);
    obj.label83:setHeight(25);
    obj.label83:setWidth(100);
    obj.label83:setFontColor("red");
    obj.label83:setText("P.Bomba");
    obj.label83:setAutoSize(true);
    obj.label83:setName("label83");

    obj.edit202 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit202:setParent(obj.POPBAG);
    obj.edit202:setLeft(570);
    obj.edit202:setTop(08);
    obj.edit202:setHeight(25);
    obj.edit202:setWidth(30);
    obj.edit202:setType("number");
    obj.edit202:setField("PBombaLimite");
    obj.edit202:setName("edit202");

    obj.label84 = GUI.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.POPBAG);
    obj.label84:setLeft(160);
    obj.label84:setTop(38);
    obj.label84:setHeight(25);
    obj.label84:setWidth(100);
    obj.label84:setFontColor("red");
    obj.label84:setText("G.Explosivo");
    obj.label84:setAutoSize(true);
    obj.label84:setName("label84");

    obj.edit203 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit203:setParent(obj.POPBAG);
    obj.edit203:setLeft(230);
    obj.edit203:setTop(35);
    obj.edit203:setHeight(25);
    obj.edit203:setWidth(30);
    obj.edit203:setType("number");
    obj.edit203:setField("GExplosivoLimite");
    obj.edit203:setName("edit203");

    obj.label85 = GUI.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.POPBAG);
    obj.label85:setLeft(265);
    obj.label85:setTop(38);
    obj.label85:setHeight(25);
    obj.label85:setWidth(100);
    obj.label85:setFontColor("red");
    obj.label85:setText("Veneno");
    obj.label85:setAutoSize(true);
    obj.label85:setName("label85");

    obj.edit204 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit204:setParent(obj.POPBAG);
    obj.edit204:setLeft(315);
    obj.edit204:setTop(35);
    obj.edit204:setHeight(25);
    obj.edit204:setWidth(30);
    obj.edit204:setType("number");
    obj.edit204:setField("VenenoLimite");
    obj.edit204:setName("edit204");

    obj.label86 = GUI.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.POPBAG);
    obj.label86:setLeft(350);
    obj.label86:setTop(38);
    obj.label86:setHeight(25);
    obj.label86:setWidth(100);
    obj.label86:setFontColor("red");
    obj.label86:setText("Bandagem");
    obj.label86:setAutoSize(true);
    obj.label86:setName("label86");

    obj.edit205 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit205:setParent(obj.POPBAG);
    obj.edit205:setLeft(415);
    obj.edit205:setTop(35);
    obj.edit205:setHeight(25);
    obj.edit205:setWidth(30);
    obj.edit205:setType("number");
    obj.edit205:setField("BandagemLimite");
    obj.edit205:setName("edit205");

    obj.label87 = GUI.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.POPBAG);
    obj.label87:setLeft(450);
    obj.label87:setTop(38);
    obj.label87:setHeight(25);
    obj.label87:setWidth(100);
    obj.label87:setFontColor("red");
    obj.label87:setText("Bomba Fumaça");
    obj.label87:setAutoSize(true);
    obj.label87:setName("label87");

    obj.edit206 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit206:setParent(obj.POPBAG);
    obj.edit206:setLeft(545);
    obj.edit206:setTop(35);
    obj.edit206:setHeight(25);
    obj.edit206:setWidth(30);
    obj.edit206:setType("number");
    obj.edit206:setField("BombaFumacaLimite");
    obj.edit206:setName("edit206");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.POPBAG);
    obj.layout1:setAlign("top");
    obj.layout1:setHeight(30);
    obj.layout1:setMargins({bottom=4});
    obj.layout1:setName("layout1");

    obj.button37 = GUI.fromHandle(_obj_newObject("button"));
    obj.button37:setParent(obj.layout1);
    obj.button37:setText("Novo Item");
    obj.button37:setWidth(150);
    obj.button37:setAlign("left");
    obj.button37:setName("button37");

    obj.rclListaDosItens4 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosItens4:setParent(obj.POPBAG);
    obj.rclListaDosItens4:setName("rclListaDosItens4");
    obj.rclListaDosItens4:setField("campoDosItens4");
    obj.rclListaDosItens4:setTemplateForm("frmItemDaLista4");
    obj.rclListaDosItens4:setLeft(5);
    obj.rclListaDosItens4:setTop(71);
    obj.rclListaDosItens4:setHeight(420);
    obj.rclListaDosItens4:setWidth(640);
    obj.rclListaDosItens4:setSelectable(true);

    obj.boxDetalhesDoItem = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxDetalhesDoItem:setParent(obj.POPBAG);
    obj.boxDetalhesDoItem:setName("boxDetalhesDoItem");
    obj.boxDetalhesDoItem:setVisible(false);
    obj.boxDetalhesDoItem:setTop(38);
    obj.boxDetalhesDoItem:setLeft(300);
    obj.boxDetalhesDoItem:setWidth(330);
    obj.boxDetalhesDoItem:setHeight(440);
    obj.boxDetalhesDoItem:setMargins({left=4, right=4});

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.boxDetalhesDoItem);
    obj.rectangle7:setColor("grey");
    obj.rectangle7:setHeight(430);
    obj.rectangle7:setWidth(380);
    obj.rectangle7:setTop(33);
    obj.rectangle7:setLeft(1);
    obj.rectangle7:setName("rectangle7");

    obj.label88 = GUI.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.rectangle7);
    obj.label88:setLeft(10);
    obj.label88:setTop(13);
    obj.label88:setHeight(25);
    obj.label88:setWidth(100);
    obj.label88:setFontColor("red");
    obj.label88:setText("Nome do Item:");
    obj.label88:setAutoSize(true);
    obj.label88:setName("label88");

    obj.edit207 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit207:setParent(obj.rectangle7);
    obj.edit207:setLeft(105);
    obj.edit207:setTop(10);
    obj.edit207:setHeight(25);
    obj.edit207:setWidth(205);
    obj.edit207:setField("NomedoItem");
    obj.edit207:setName("edit207");

    obj.textEditor14 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor14:setParent(obj.rectangle7);
    obj.textEditor14:setLeft(10);
    obj.textEditor14:setTop(40);
    obj.textEditor14:setWidth(300);
    obj.textEditor14:setHeight(310);
    obj.textEditor14:setField("DescriItem");
    obj.textEditor14:setName("textEditor14");

    obj.label89 = GUI.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.rectangle7);
    obj.label89:setLeft(10);
    obj.label89:setTop(360);
    obj.label89:setHeight(25);
    obj.label89:setWidth(100);
    obj.label89:setText("Tipo :");
    obj.label89:setAutoSize(true);
    obj.label89:setName("label89");

    obj.comboBox10 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox10:setParent(obj.rectangle7);
    obj.comboBox10:setLeft(50);
    obj.comboBox10:setTop(360);
    obj.comboBox10:setWidth(140);
    obj.comboBox10:setHeight(18);
    obj.comboBox10:setField("TipoItens");
    obj.comboBox10:setItems({'Kunai', 'Shuriken', 'Shuriken Fuuma', 'Kunai Gigante', 'Marionete', 'Papel Bomba', 'Ginso Explosivo', 'Veneno', 'Bandagem', 'Bomba de Fumaça', 'Selamento', 'Outros'});
    obj.comboBox10:setName("comboBox10");

    obj.tab4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("Historia");
    obj.tab4:setName("tab4");

    obj.scrollBox8 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox8:setParent(obj.tab4);
    obj.scrollBox8:setAlign("client");
    obj.scrollBox8:setName("scrollBox8");

    obj.image27 = GUI.fromHandle(_obj_newObject("image"));
    obj.image27:setParent(obj.scrollBox8);
    obj.image27:setLeft(1);
    obj.image27:setTop(1);
    obj.image27:setWidth(1000);
    obj.image27:setHeight(700);
    obj.image27:setSRC("/imagens/4.png");
    obj.image27:setName("image27");

    obj.richEdit2 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit2:setParent(obj.scrollBox8);
    obj.richEdit2:setLeft(85);
    obj.richEdit2:setTop(140);
    obj.richEdit2:setWidth(440);
    obj.richEdit2:setHeight(545);
    lfm_setPropAsString(obj.richEdit2, "backgroundColor",  "#00000000");
    lfm_setPropAsString(obj.richEdit2, "defaultFontColor",  "white");
    obj.richEdit2:setField("Kutchyose");
    obj.richEdit2:setName("richEdit2");

    obj._e_event0 = obj:addEventListener("onNodeReady",
        function (_)
            if sheet.Nome == nil then
            			sheet.cla = "Sem clã"
            			sheet.Graduacao = "Academico"
            			sheet.Idade = (tonumber(sheet.Idade) or 0);
            			sheet.Elemento = (tonumber(sheet.Elemento) or 0);
            			sheet.Yen = (tonumber(sheet.Yen) or 0);
            			sheet.Forca = (tonumber(sheet.Forca) or 0);
            			sheet.Inteligencia = (tonumber(sheet.Inteligencia) or 0);
            			sheet.Sabedoria = (tonumber(sheet.Sabedoria) or 0);
            			sheet.Habilidade = (tonumber(sheet.Habilidade) or 0);
            			sheet.Resistencia = (tonumber(sheet.Resistencia) or 0);
            			sheet.TaiTotal = (tonumber(sheet.TaiTotal) or 0);
            			sheet.NinTotal = (tonumber(sheet.NinTotal) or 0);
            			sheet.GenTotal = (tonumber(sheet.GenTotal) or 0);
            			sheet.DanoArmado = (tonumber(sheet.DanoArmado) or 0);
            			sheet.Elemental1 = (tonumber(sheet.Elemental1) or 0);
            			sheet.HPTotal = (tonumber(sheet.HPTotal) or 0);
            			sheet.ChakraTotal = (tonumber(sheet.ChakraTotal) or 0);
            			sheet.ReiatsuTotal = (tonumber(sheet.ReiatsuTotal) or 0);
            			sheet.OutrosTotal = (tonumber(sheet.OutrosTotal) or 0);
            			sheet.DanoJutsu = (tonumber(sheet.DanoJutsu) or 0);
            			sheet.DanoJutsu2 = (tonumber(sheet.DanoJutsu2) or 0);
            			sheet.DanoJutsu3 = (tonumber(sheet.DanoJutsu3) or 0);
            			sheet.CustoJutsu = (tonumber(sheet.CustoJutsu) or 0);
            			sheet.CustoJutsu2 = (tonumber(sheet.CustoJutsu2) or 0);
            			sheet.CustoJutsu3 = (tonumber(sheet.CustoJutsu3) or 0);
            			sheet.Tipo = (tonumber(sheet.Tipo) or 0);
            			sheet.Tipo2 = (tonumber(sheet.Tipo2) or 0);
            			sheet.Tipo3 = (tonumber(sheet.Tipo3) or 0);
            			sheet.Intensidade = (tonumber(sheet.Intensidade) or 0);
            			sheet.Intensidade2 = (tonumber(sheet.Intensidade2) or 0);
            			sheet.Intensidade3 = (tonumber(sheet.Intensidade3) or 0);
            			sheet.LevelJutsu = (tonumber(sheet.LevelJutsu) or 0);
            			sheet.LevelJutsu2 = (tonumber(sheet.LevelJutsu2) or 0);
            			sheet.LevelJutsu3 = (tonumber(sheet.LevelJutsu3) or 0);
            			sheet.DanoKunai = (tonumber(sheet.DanoKunai) or 0);
            			sheet.DanoShuriken = (tonumber(sheet.DanoShuriken) or 0);
            			sheet.DanoShurikenFuuma = (tonumber(sheet.DanoShurikenFuuma) or 0);
            			sheet.DanoKunaiGigante = (tonumber(sheet.DanoKunaiGigante) or 0);
            			sheet.Marionete = (tonumber(sheet.Marionete) or 0);
            			sheet.KunaiLimite = (tonumber(sheet.KunaiLimite) or 0);
            			sheet.ShurikenLimite = (tonumber(sheet.ShurikenLimite) or 0);
            			sheet.SFuumaLimite = (tonumber(sheet.SFuumaLimite) or 0);
            			sheet.KGiganteLimite = (tonumber(sheet.KGiganteLimite) or 0);
            			sheet.PB = (tonumber(sheet.PB) or 0);
            			sheet.GinsoExplosivo = (tonumber(sheet.GinsoExplosivo) or 0);
            			sheet.Veneno = (tonumber(sheet.Veneno) or 0);
            			sheet.Bandagem = (tonumber(sheet.Bandagem) or 0);
            			sheet.BF = (tonumber(sheet.BF) or 0);
            			sheet.PBombaLimite = (tonumber(sheet.PBombaLimite) or 0);
            			sheet.GExplosivoLimite = (tonumber(sheet.GExplosivoLimite) or 0);
            			sheet.VenenoLimite = (tonumber(sheet.VenenoLimite) or 0);
            			sheet.BandagemLimite = (tonumber(sheet.BandagemLimite) or 0);
            			sheet.BombaFumacaLimite = (tonumber(sheet.BombaFumacaLimite) or 0);
            			sheet.DTaijutsu = (tonumber(sheet.DTaijutsu) or 0);
            			sheet.DNinjutsu = (tonumber(sheet.DNinjutsu) or 0);
            			sheet.DGenjutsu = (tonumber(sheet.DGenjutsu) or 0);
            			sheet.DDA = (tonumber(sheet.DDA) or 0);
            			sheet.DDE = (tonumber(sheet.DDE) or 0);
            			sheet.DHP = (tonumber(sheet.DHP) or 0);
            			sheet.DChakra = (tonumber(sheet.DChakra) or 0);
            			sheet.DReiatsu = (tonumber(sheet.DReiatsu) or 0);
            			sheet.DOutro = (tonumber(sheet.DOutro) or 0);
            			sheet.DAcertoTai = (tonumber(sheet.DAcertoTai) or 0);
            			sheet.DAcertoNin = (tonumber(sheet.DAcertoNin) or 0);
            			sheet.DAcertoGen = (tonumber(sheet.DAcertoGen) or 0);
            			sheet.DBloqueio = (tonumber(sheet.DBloqueio) or 0);
            			sheet.DEsquiva = (tonumber(sheet.DEsquiva) or 0);
            			sheet.DCriticalTai = (tonumber(sheet.DCriticalTai) or 0);
            			sheet.DCriticalNin = (tonumber(sheet.DCriticalNin) or 0);
            			sheet.DCriticalGen = (tonumber(sheet.DCriticalGen) or 0);
            			sheet.ChakraBiju = (tonumber(sheet.ChakraBiju) or 0);
            			sheet.ChakraBranco = (tonumber(sheet.ChakraBranco) or 0);
            			sheet.ChakraPreto = (tonumber(sheet.ChakraPreto) or 0);
            			sheet.Hadou = (tonumber(sheet.Hadou) or 0);
            			sheet.HadouNegro = (tonumber(sheet.HadouNegro) or 0);
            			sheet.ChakraNatural = (tonumber(sheet.ChakraNatural) or 0);
            			sheet.ChakraRoxo = (tonumber(sheet.ChakraRoxo) or 0);
            			sheet.IntensidadeP1 = (tonumber(sheet.IntensidadeP1) or 0);
            			sheet.CustoPerga1 = (tonumber(sheet.CustoPerga1) or 0);
            			sheet.TipoPergaminho1 = (tonumber(sheet.TipoPergaminho1) or 0);
            			sheet.IntensidadeP2 = (tonumber(sheet.IntensidadeP2) or 0);
            			sheet.CustoPerga2 = (tonumber(sheet.CustoPerga2) or 0);
            			sheet.TipoPergaminho2 = (tonumber(sheet.TipoPergaminho2) or 0);
            			sheet.IntensidadeP3 = (tonumber(sheet.IntensidadeP3) or 0);
            			sheet.CustoPerga3 = (tonumber(sheet.CustoPerga3) or 0);
            			sheet.TipoPergaminho3 = (tonumber(sheet.TipoPergaminho3) or 0);
            			sheet.AcertoTaiTotal = (tonumber(sheet.AcertoTaiTotal) or 0);
            			sheet.AcertoNinTotal = (tonumber(sheet.AcertoNinTotal) or 0);
            			sheet.AcertoGenTotal = (tonumber(sheet.AcertoGenTotal) or 0);
            			sheet.EsquivaTotal = (tonumber(sheet.EsquivaTotal) or 0);
            			sheet.BloqueioTotal = (tonumber(sheet.BloqueioTotal) or 0);
            			sheet.CRTaiTotal = (tonumber(sheet.CRTaiTotal) or 0);
            			sheet.CRNinTotal = (tonumber(sheet.CRNinTotal) or 0);
            			sheet.CRGenTotal = (tonumber(sheet.CRGenTotal) or 0);
            			sheet.TurnoTotal = (tonumber(sheet.TurnoTotal) or 0);
            			sheet.DShurikenTotal = (tonumber(sheet.DShurikenTotal) or 0);
            			sheet.DKunaiTotal = (tonumber(sheet.DKunaiTotal) or 0);
            			sheet.DPBTotal = (tonumber(sheet.DPBTotal) or 0);
            			sheet.DEETotal = (tonumber(sheet.DEETotal) or 0);
            			sheet.DVenenoTotal = (tonumber(sheet.DVenenoTotal) or 0);
            			sheet.GAcertoTai = (tonumber(sheet.GAcertoTai) or 0);
            			sheet.GAcertoNin = (tonumber(sheet.GAcertoNin) or 0);
            			sheet.GAcertoGen = (tonumber(sheet.GAcertoGen) or 0);
            			sheet.GEsquiva = (tonumber(sheet.GEsquiva) or 0);
            			sheet.GBloqueio = (tonumber(sheet.GBloqueio) or 0);
            			sheet.GCRTai = (tonumber(sheet.GCRTai) or 0);
            			sheet.GCRNin = (tonumber(sheet.GCRNin) or 0);
            			sheet.GCRGen = (tonumber(sheet.GCRGen) or 0);
            			sheet.GTurno = (tonumber(sheet.GTurno) or 0);
            			sheet.CTai = (tonumber(sheet.CTai) or 0);
            			sheet.CNin = (tonumber(sheet.CNin) or 0);	
            			sheet.CGen = (tonumber(sheet.CGen) or 0);
            			sheet.CDA = (tonumber(sheet.CDA) or 0);
            			sheet.CDE = (tonumber(sheet.CDE) or 0);
            			sheet.CHP = (tonumber(sheet.CHP) or 0);
            			sheet.CChakra = (tonumber(sheet.CChakra) or 0);
            			sheet.Taijutsu = (tonumber(sheet.Taijutsu) or 0);
            			sheet.Ninjutsu = (tonumber(sheet.Ninjutsu) or 0);
            			sheet.Genjutsu = (tonumber(sheet.Genjutsu) or 0);
            			sheet.DanoArmado = (tonumber(sheet.DanoArmado) or 0);
            			sheet.Elemental1 = (tonumber(sheet.Elemental1) or 0);
            			sheet.GHP = (tonumber(sheet.GHP) or 0);
            			sheet.GChakra = (tonumber(sheet.GChakra) or 0);
            			sheet.CAT = (tonumber(sheet.CAT) or 0);
            			sheet.CAN = (tonumber(sheet.CAN) or 0);
            			sheet.CAG = (tonumber(sheet.CAG) or 0);
            			sheet.CEsq = (tonumber(sheet.CEsq) or 0);
            			sheet.CBloq = (tonumber(sheet.CBloq) or 0);
            			sheet.CCRT = (tonumber(sheet.CCRT) or 0);
            			sheet.CCRN = (tonumber(sheet.CCRN) or 0);
            			sheet.CCRG = (tonumber(sheet.CCRG) or 0);
            			sheet.ExpTotal = 0;
            			sheet.Exp = 0;
            			sheet.Level = 1;
            			sheet.HP = (tonumber(sheet.HP) or 0);
            			sheet.Chakra = (tonumber(sheet.Chakra) or 0);
            			sheet.Reiatsu = (tonumber(sheet.Reiatsu) or 0);
            			sheet.Outros = (tonumber(sheet.Outros) or 0);
            			sheet.ArmaDT = (tonumber(sheet.ArmaDT) or 0);
            			sheet.ArmaDN = (tonumber(sheet.ArmaDN) or 0);
            			sheet.ArmaDG = (tonumber(sheet.ArmaDG) or 0);
            			sheet.ArmaDA = (tonumber(sheet.ArmaDA) or 0);
            			sheet.ArmaDE = (tonumber(sheet.ArmaDE) or 0);
            			sheet.ArmaHP = (tonumber(sheet.ArmaHP) or 0);
            			sheet.ArmaChakra = (tonumber(sheet.ArmaChakra) or 0);
            			sheet.BandanaHP = (tonumber(sheet.BandanaHP) or 0);
            			sheet.BandanaChakra = (tonumber(sheet.BandanaChakra) or 0);
            			sheet.BandanaReducao = (tonumber(sheet.BandanaReducao) or 0);
            			sheet.ColeteHP = (tonumber(sheet.ColeteHP) or 0);
            			sheet.ColeteChakra = (tonumber(sheet.ColeteChakra) or 0);
            			sheet.ColeteReducao = (tonumber(sheet.ColeteReducao) or 0);
            			sheet.AcessorioDT = (tonumber(sheet.AcessorioDT) or 0);
            			sheet.AcessorioDN = (tonumber(sheet.AcessorioDN) or 0);
            			sheet.AcessorioDG = (tonumber(sheet.AcessorioDG) or 0);
            			sheet.AcessorioDE = (tonumber(sheet.AcessorioDE) or 0);
            			sheet.AcessorioReiatsu = (tonumber(sheet.AcessorioReiatsu) or 0);
            			sheet.AcessorioHP = (tonumber(sheet.AcessorioHP) or 0);
            			sheet.AcessorioChakra = (tonumber(sheet.AcessorioChakra) or 0);
            			sheet.AcessorioOutros = (tonumber(sheet.AcessorioOutros) or 0);
            			sheet.GHP = 100;
            			sheet.Nome = "Escolha o Nome";
            			showMessage("Escolha seu nome, clã e idade");
            		end;
        end, obj);

    obj._e_event1 = obj.button1:addEventListener("onClick",
        function (_)
            local mesaDoPersonagem = rrpg.getMesaDe(sheet);        
            						sheet.AcertoTaiTotal = tonumber(sheet.AcertoTaiTotal or 0);                        
            						mesaDoPersonagem.chat:rolarDados("1d100 ","[§K3]Tentativa de ataque fisico",
            							function (rolado)
            								if sheet.AcertoTaiTotal >= rolado.resultado then
            										mesaDoPersonagem.chat:enviarMensagem("[§K3]Acertou o alvo");
            								else
            										mesaDoPersonagem.chat:enviarMensagem("[§K4]O Oponente esquivou de seu ataque");
            								end;          
            						end);
        end, obj);

    obj._e_event2 = obj.button2:addEventListener("onClick",
        function (_)
            local mesaDoPersonagem = rrpg.getMesaDe(sheet);        
            						sheet.EsquivaTotal = tonumber(sheet.EsquivaTotal or 0);                        
            						mesaDoPersonagem.chat:rolarDados("1d100 ","[§K3]Tentativa de Esquiva",
            							function (rolado)
            								if sheet.EsquivaTotal >= rolado.resultado then
            										mesaDoPersonagem.chat:enviarMensagem("[§K3]Esquivou do ataque do oponente");
            								else
            										mesaDoPersonagem.chat:enviarMensagem("[§K4]O Oponente Acertou");
            								end;          
            						end);
        end, obj);

    obj._e_event3 = obj.button3:addEventListener("onClick",
        function (_)
            self.POPJutsu:show();
        end, obj);

    obj._e_event4 = obj.button4:addEventListener("onClick",
        function (_)
            -- Usuário clicou no botão de criar novo item.
            						-- Vamos inserir um novo item no nosso recordList                              
            						self.rclListaDosItens1:append();
        end, obj);

    obj._e_event5 = obj.rclListaDosItens1:addEventListener("onSelect",
        function (_)
            --[[
            						Este evento é chamado quando o usuário selecionar/deselecionar itens da lista. Quando o usuário selecionar, vamos fazer nosso dataScopeBox 
            						(e todas as tag dentro dele) salvar e carregar dados no   objeto Nodo (NodeDatabase) do item selecionado.
            						--]]                      
            						local node = self.rclListaDosItens1.selectedNode; 
            						self.ListaJutsus.node = node;                       
            						-- a caixa de detalhe só ficará visível se houver item selecionado
            						self.ListaJutsus.visible = (node ~= nil);
        end, obj);

    obj._e_event6 = obj.button5:addEventListener("onClick",
        function (_)
            local node = self.ListaJutsus.node;									
            									local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            									
            									if node.Tipo == nil then
            										showMessage("Escolha o tipo do seu jutsu e preencha com as informações");
            									else 	
            										sheet.AcertoNinTotal = tonumber(sheet.AcertoNinTotal) or 0;
            										
            										if node.DanoJutsu ~= nil then
            											node.DNVerdadeiro = tonumber(node.DanoJutsu)* 2^tonumber(node.LevelJutsu1 - 1); 
            										else
            											node.LevelJutsu1 = 1;
            										end;
            										
            										if node.Tipo == 'Tai' then
            											node.Intensidade = (tonumber(node.DNVerdadeiro) or 0) + (tonumber(sheet.TaiTotal) or 0);	
            										end;	
            										
            										if node.Tipo == 'Nin' then
            											node.Intensidade = (tonumber(node.DNVerdadeiro) or 0) + (tonumber(sheet.NinTotal) or 0);	
            										end;
            										
            										if node.Tipo == 'Gen' then
            											node.Intensidade = (tonumber(node.DNVerdadeiro) or 0) + (tonumber(sheet.GenTotal) or 0);	
            										end;
            										
            										if node.Tipo == 'Elemental' then
            											node.Intensidade = (tonumber(node.DNVerdadeiro) or 0) + (tonumber(sheet.EleTotal) or 0);	
            										end;
            										
            										if node.Tipo == 'Selamento' then
            											node.Intensidade = 0;	
            										end;
            										
            										if node.Tipo == 'Outros' then
            											node.Intensidade = 0;
            										end;
            																			
            										mesaDoPersonagem.chat:rolarDados("1d100", "[§K3]Tentativa de executar Jutsu",
            										function (rolado)	
            											if sheet.AcertoNinTotal >= rolado.resultado then
            												mesaDoPersonagem.chat:enviarMensagem(".. [§K3]".. node.DescriJutsu);
            													
            												if node.Tipo == 'Tai'then
            													mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade .. "[§K3] »");
            												end;
            												
            												if node.Tipo == 'Nin'then
            													mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade .. "[§K3] »");
            												end;
            												
            												if node.Tipo == 'Gen'then
            													mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade .. "[§K3] »");
            												end;
            												
            												if node.Tipo == 'Elemental'then
            													mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade .. "[§K3] »");
            												end;
            												
            												local mesa = Firecast.getMesaDe(sheet);
            												local ChakraPlayer = mesa.meuJogador:getBarValue(2);
            												node.ChakraPlayer = mesa.meuJogador:getBarValue(2);
            												node.ChakraPlayer = (tonumber(node.ChakraPlayer) or 0) - (tonumber(node.CustoJutsu) or 0);
            												mesa.meuJogador:requestSetBarValue(2, node.ChakraPlayer);
            											else
            												mesaDoPersonagem.chat:enviarMensagem("[§K4,0]TURURU, O Naruto pode ser duro as vezes [§I https://i0.wp.com/www.fatosdesconhecidos.com.br/wp-content/uploads/2018/11/Naruto_after_Jiraiyas_death.png?resize=600,450]");
            											end;
            										end);
            									end;
        end, obj);

    obj._e_event7 = obj.button6:addEventListener("onClick",
        function (_)
            self.POPFavorito:show();
        end, obj);

    obj._e_event8 = obj.button7:addEventListener("onClick",
        function (_)
            -- Usuário clicou no botão de criar novo item.
            							-- Vamos inserir um novo item no nosso recordList                              
            							self.rclListaDosItens2:append();
        end, obj);

    obj._e_event9 = obj.rclListaDosItens2:addEventListener("onSelect",
        function (_)
            --[[
            								Este evento é chamado quando o usuário selecionar/deselecionar itens da lista. Quando o usuário selecionar, vamos fazer nosso dataScopeBox (e todas as tag dentro dele) salvar e carregar dados no   objeto Nodo (NodeDatabase) do item selecionado.
            
            						  --]]                      
            						  local node = self.rclListaDosItens2.selectedNode; 
            								 self.ListaJutsus2.node = node;                       
            						  -- a caixa de detalhe só ficará visível se houver item selecionado
            								  self.ListaJutsus2.visible = (node ~= nil);
        end, obj);

    obj._e_event10 = obj.button8:addEventListener("onClick",
        function (_)
            local node = self.ListaJutsus2.node;									
            									local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            									if node.Tipo2 == nil then
            										showMessage("Escolha o tipo do seu jutsu e preencha com as informações");
            									else 	
            										sheet.AcertoNinTotal = tonumber(sheet.AcertoNinTotal) or 0;
            										
            										if node.DanoJutsu ~= nil then
            											node.DNVerdadeiro = tonumber(node.DanoJutsu)* 2^tonumber(node.LevelJutsu1 - 1); 
            										else
            											node.LevelJutsu1 = 1;
            										end;
            										
            										if node.Tipo2 == 'Tai' then
            											node.Intensidade2 = (tonumber(node.DNVerdadeiro2) or 0) + (tonumber(sheet.TaiTotal) or 0);	
            										end;	
            										
            										if node.Tipo2 == 'Nin' then
            											node.Intensidade2 = (tonumber(node.DNVerdadeiro2) or 0) + (tonumber(sheet.NinTotal) or 0);	
            										end;
            										
            										if node.Tipo2 == 'Gen' then
            											node.Intensidade2 = (tonumber(node.DNVerdadeiro2) or 0) + (tonumber(sheet.GenTotal) or 0);	
            										end;
            										
            										if node.Tipo2 == 'Elemental' then
            											node.Intensidade2 = (tonumber(node.DNVerdadeiro2) or 0) + (tonumber(sheet.EleTotal) or 0);	
            										end;
            										
            										if node.Tipo2 == 'Selamento' then
            											node.Intensidade = 0;	
            										end;
            										
            										if node.Tipo2 == 'Outros' then
            											node.Intensidade = 0;
            										end;
            										
            										mesaDoPersonagem.chat:rolarDados("1d100", "[§K3]Tentativa de executar Jutsu",
            											function (rolado)	
            												if sheet.AcertoNinTotal >= rolado.resultado then
            													mesaDoPersonagem.chat:enviarMensagem(".. [§K3]".. node.DescriJutsu2);
            													
            													if node.Tipo2 == 'Tai'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade2 .. "[§K3,0] »");
            													end;
            													
            													if node.Tipo2 == 'Nin'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade2 .. "[§K3,0] »");
            													end;
            													
            													if node.Tipo2 == 'Gen'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade2 .. "[§K3,0] »");
            													end;
            													
            													if node.Tipo2 == 'Elemental'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade2 .. "[§K3,0] »");
            													end;
            													
            													local mesa = Firecast.getMesaDe(sheet);
            													local ChakraPlayer2 = mesa.meuJogador:getBarValue(2);
            													node.ChakraPlayer2 = mesa.meuJogador:getBarValue(2);
            													node.ChakraPlayer2 = (tonumber(node.ChakraPlayer2) or 0) - (tonumber(node.CustoJutsu2) or 0);
            													mesa.meuJogador:requestSetBarValue(2, node.ChakraPlayer2);
            												else
            													mesaDoPersonagem.chat:enviarMensagem("[§K4,0]TURURU, O Naruto pode ser duro as vezes [§I https://i0.wp.com/www.fatosdesconhecidos.com.br/wp-content/uploads/2018/11/Naruto_after_Jiraiyas_death.png?resize=600,450]");
            												end;
            										end);
            									end;
        end, obj);

    obj._e_event11 = obj.button9:addEventListener("onClick",
        function (_)
            self.POPKekegenkai:show();
        end, obj);

    obj._e_event12 = obj.button10:addEventListener("onClick",
        function (_)
            -- Usuário clicou no botão de criar novo item.
            						-- Vamos inserir um novo item no nosso recordList                              
            						self.rclListaDosItens3:append();
        end, obj);

    obj._e_event13 = obj.rclListaDosItens3:addEventListener("onSelect",
        function (_)
            --[[
            						Este evento é chamado quando o usuário selecionar/deselecionar itens da lista. Quando o usuário selecionar, vamos fazer nosso dataScopeBox (e todas as tag dentro dele) salvar e carregar dados no   objeto Nodo (NodeDatabase) do item selecionado.
            						--]]                      
            						local node = self.rclListaDosItens3.selectedNode; 
            						self.ListaJutsus3.node = node;                       
            						-- a caixa de detalhe só ficará visível se houver item selecionado
            						self.ListaJutsus3.visible = (node ~= nil);
        end, obj);

    obj._e_event14 = obj.button11:addEventListener("onClick",
        function (_)
            local node = self.ListaJutsus3.node;									
            									local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            									if node.Tipo3 == nil then
            										showMessage("Escolha o tipo do seu jutsu e preencha com as informações");
            									else 	
            										sheet.AcertoNinTotal = tonumber(sheet.AcertoNinTotal) or 0;
            										
            										if node.DanoJutsu ~= nil then
            											node.DNVerdadeiro = tonumber(node.DanoJutsu)* 2^tonumber(node.LevelJutsu1 - 1); 
            										else
            											node.LevelJutsu1 = 1;
            										end;											
            										
            										if node.Tipo3 == 'Tai' then
            											node.Intensidade3 = (tonumber(node.DNVerdadeiro3) or 0) + (tonumber(sheet.TaiTotal) or 0);	
            										end;	
            										
            										if node.Tipo3 == 'Nin' then
            											node.Intensidade3 = (tonumber(node.DNVerdadeiro3) or 0) + (tonumber(sheet.NinTotal) or 0);	
            										end;
            										
            										if node.Tipo3 == 'Gen' then
            											node.Intensidade3 = (tonumber(node.DNVerdadeiro3) or 0) + (tonumber(sheet.GenTotal) or 0);	
            										end;
            										
            										if node.Tipo3 == 'Elemental' then
            											node.Intensidade3 = (tonumber(node.DNVerdadeiro3) or 0) + (tonumber(sheet.EleTotal) or 0);	
            										end;
            										
            										if node.Tipo3 == 'Selamento' then
            											node.Intensidade = 0;	
            										end;
            										
            										if node.Tipo3 == 'Outros' then
            											node.Intensidade = 0;
            										end;
            										
            										mesaDoPersonagem.chat:rolarDados("1d100", "[§K3]Tentativa de executar Jutsu",
            											function (rolado)	
            												if sheet.AcertoNinTotal >= rolado.resultado then
            													mesaDoPersonagem.chat:enviarMensagem(".. [§K3]".. node.DescriJutsu3);
            													
            													if node.Tipo3 == 'Tai'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade3 .. "[§K3,0] »");
            													end;
            													
            													if node.Tipo3 == 'Nin'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade3 .. "[§K3,0] »");
            													end;
            													
            													if node.Tipo3 == 'Gen'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade3 .. "[§K3,0] »");
            													end;
            													
            													if node.Tipo3 == 'Elemental'then
            														mesaDoPersonagem.chat:enviarMensagem("[§K3,0]Causando « [§K4,0]" .. node.Intensidade3 .. "[§K3,0] »");
            													end;
            																										
            													local mesa = Firecast.getMesaDe(sheet);
            													local ChakraPlayer3 = mesa.meuJogador:getBarValue(2);
            													node.ChakraPlayer3 = mesa.meuJogador:getBarValue(2);
            													node.ChakraPlayer3 = (tonumber(node.ChakraPlayer3) or 0) - (tonumber(node.CustoJutsu3) or 0);
            													mesa.meuJogador:requestSetBarValue(2, node.ChakraPlayer3);
            												else
            													mesaDoPersonagem.chat:enviarMensagem("[§K4,0]TURURU, O Naruto pode ser duro as vezes [§I https://i0.wp.com/www.fatosdesconhecidos.com.br/wp-content/uploads/2018/11/Naruto_after_Jiraiyas_death.png?resize=600,450]");
            												end;
            										end);
            									end;
        end, obj);

    obj._e_event15 = obj.button12:addEventListener("onClick",
        function (_)
            sheet.Level = (tonumber(sheet.Level) or 0) - 1;
            				if 0 > sheet.Level then
            					sheet.Level = 0;
            				end;
            				
            				if sheet.Graduacao == 'Academico' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 100;
            				end;
            				
            				if sheet.Graduacao == 'Genin' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 200;
            				end;
            				
            				if sheet.Graduacao == 'Chunin' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 1000;		
            				end;
            				
            				if sheet.Graduacao == 'Jounin' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 5000;
            				end;
            				
            				if sheet.Graduacao == 'Anbu' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 10000;
            				end;
            			   
            				if sheet.Graduacao == 'AnbuNucleo' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 15000;
            				end;
            				
            				if sheet.Graduacao == 'Organização' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 20000;
            				end;				
            								
            				if sheet.Graduacao == 'GDE' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 30000;
            				end;				
            								
            				if sheet.Graduacao == 'Concelheiro' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 40000;
            				end;				
            								
            				if sheet.Graduacao == 'Kage' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) - 50000;
            				end;
        end, obj);

    obj._e_event16 = obj.button13:addEventListener("onClick",
        function (_)
            sheet.Level = (tonumber(sheet.Level) or 0) + 1;
            				
            				if sheet.Graduacao == 'Academico' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 100;
            				end;
            				
            				if sheet.Graduacao == 'Genin' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 200;
            				end;
            				
            				if sheet.Graduacao == 'Chunin' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 1000;			
            				end;
            				
            				if sheet.Graduacao == 'Jounin' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 5000;
            				end;
            				
            				if sheet.Graduacao == 'Anbu' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 10000;
            				end;
            			   
            				if sheet.Graduacao == 'AnbuNucleo' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 15000;
            				end;
            				
            				if sheet.Graduacao == 'Organização' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 20000;
            				end;				
            								
            				if sheet.Graduacao == 'GDE' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 30000;
            				end;				
            								
            				if sheet.Graduacao == 'Concelheiro' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 40000;
            				end;				
            								
            				if sheet.Graduacao == 'Kage' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 50000;
            				end;
        end, obj);

    obj._e_event17 = obj.button14:addEventListener("onClick",
        function (_)
            local mesa = Firecast.getMesaDe(sheet); 
            				local HPTotal = (tonumber(sheet.HPTotal) or 0);
            				mesa.meuJogador:requestSetBarValue(1, nil, HPTotal);
        end, obj);

    obj._e_event18 = obj.button15:addEventListener("onClick",
        function (_)
            local mesa = Firecast.getMesaDe(sheet); 
            				local ChakraTotal = (tonumber(sheet.ChakraTotal) or 0);
            				mesa.meuJogador:requestSetBarValue(2, nil, ChakraTotal);
        end, obj);

    obj._e_event19 = obj.button16:addEventListener("onClick",
        function (_)
            self.POPCALCULO:show();
        end, obj);

    obj._e_event20 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.ExpTotal = (tonumber(sheet.Level) or 0) * 100;
            								
            				if sheet.Exp > sheet.ExpTotal then
            					sheet.Exp = (tonumber(sheet.Exp) or 0) - (tonumber(sheet.ExpTotal) or 0);
            					sheet.Level = (tonumber(sheet.Level) or 0) + 1;
            				end;	
            											
            				if sheet.Graduacao == 'Academico' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 100;
            				end;
            				
            				if sheet.Graduacao == 'Genin' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 200;
            				end;
            				
            				if sheet.Graduacao == 'Chunin' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 1000;		
            				end;
            				
            				if sheet.Graduacao == 'Jounin' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 5000;
            				end;
            				
            				if sheet.Graduacao == 'Anbu' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 10000;
            				end;
            			   
            				if sheet.Graduacao == 'AnbuNucleo' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 15000;
            				end;
            				
            				if sheet.Graduacao == 'Organização' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 20000;
            				end;				
            								
            				if sheet.Graduacao == 'GDE' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 30000;
            				end;				
            								
            				if sheet.Graduacao == 'Concelheiro' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 40000;
            				end;				
            								
            				if sheet.Graduacao == 'Kage' then
            					sheet.GHP =  (tonumber(sheet.GHP) or 0) + 50000;
            				end;
        end, obj);

    obj._e_event21 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.CTai = 0;
            				sheet.CNin = 0;
            				sheet.CGen = 0;
            				sheet.CDA = 0;
            				sheet.CDE = 0;
            				sheet.CHP = 0;
            				sheet.CChakra = 0;
            				sheet.CAT = 0;
            				sheet.CAN = 0;
            				sheet.CAG = 0;
            				sheet.CEsq = 0;
            				sheet.CBloq = 0;
            				sheet.CCRT = 0;
            				sheet.CCRN = 0;
            				sheet.CCRG = 0	;
        end, obj);

    obj._e_event22 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.Cla == 'Sem clã' then
            				end;
            				
            				if sheet.Cla == 'Aburame' then
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * -0.10;
            					sheet.CNin = (tonumber(sheet.Ninjutsu) or 0) * 0.15;
            				end;
            				
            				if sheet.Cla == 'Akimichi' then
            					sheet.CTai = (tonumber(sheet.Taijutsu) or 0) * 0.20;
            					sheet.CHP = (tonumber(sheet.HP) or 0) * 0.20;
            				end;			
            				
            				if sheet.Cla == 'Fuma' then
            					sheet.CCRN = 5;
            					sheet.CAN = 5;
            				end;
            				
            				if sheet.Cla == 'Hyuga' then
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.20;
            					sheet.CTai = (tonumber(sheet.Taijutsu) or 0) * 0.10;
            				end;
            				
            				if sheet.Cla == 'Inuzuka' then
            				end;
            				
            				if sheet.Cla == 'Jyuin' then
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.40;
            					sheet.CHP = (tonumber(sheet.HP) or 0) * 0.10;
            				end;
            				
            				if sheet.Cla == 'Kaguya' then
            					sheet.CHP = (tonumber(sheet.HP) or 0) * 0.10;
            					sheet.CBloq = 10;
            				end;
            				
            				if sheet.Cla == 'Kami' then
            					sheet.CNin = (tonumber(sheet.Ninjutsu) or 0) * 0.10;
            				end;
            
            				if sheet.Cla == 'Kamizurui' then
            					sheet.CAN = 5;
            					sheet.CCRN = 5;
            					sheet.CEsq = 3;
            				end;
            				
            				if sheet.Cla == 'Nara' then
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.20;
            					sheet.CNin = (tonumber(sheet.Ninjutsu) or 0) * 0.10;
            				end;
            				
            				if sheet.Cla == 'Uchiha' then
            					sheet.CGen = (tonumber(sheet.Genjutsu) or 0) * 0.10;
            				end;
            				
            				if sheet.Cla == 'Uzumaki' then
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 1;
            				end;
            				
            				if sheet.Cla == 'Yamanaka' then
            					sheet.CAT = 5;
            					sheet.CAN = 5;
            					sheet.CAG = 5; 
            				end;
            
            				if sheet.Cla == 'Rinnegan' then
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.30;
            					sheet.CHP = (tonumber(sheet.HP) or 0) * 0.15;
            				end;
            				
            				if sheet.Cla == '----------' then
            					showMessage("ESCOLHE UM CLÃ FILHA DA PUTA");
            				end;
            				
            				if sheet.Cla == 'Fire' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            				end;
            				
            				if sheet.Cla == 'Kibaku' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            				end;
            				
            				if sheet.Cla == 'Kori' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.10;
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.20;
            				end;
            				
            				if sheet.Cla == 'Mashido' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            				end;
            				
            				if sheet.Cla == 'Nomade' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            				end;
            			
            				if sheet.Cla == 'Orega' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            				end;
            				
            				if sheet.Cla == 'Ray' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            				end;
            			
            				if sheet.Cla == 'Sabaku' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.10;
            					sheet.CDA = (tonumber(sheet.DanoArmado) or 0) * 0.10;
            				end;
            				
            				if sheet.Cla == 'Senju' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.20;
            					sheet.CHP = (tonumber(sheet.HP) or 0) * 0.20;
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.30;
            				end;
            				
            				if sheet.Cla == 'Temuri' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.30;
            				end;
            				
            				if sheet.Cla == 'Xaulan' then
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.30;
            				end;								
            				------------------------------------------------------				
            				if sheet.Cla == 'Gote' then
            					sheet.CGen = (tonumber(sheet.Genjutsu) or 0) * 0.20;
            				end;
            				
            				if sheet.Cla == 'Hanbun' then
            					sheet.CTai = (tonumber(sheet.Taijutsu) or 0) * 0.50;
            					sheet.CNin = (tonumber(sheet.Ninjutsu) or 0) * 0.50;
            					sheet.CGen = (tonumber(sheet.Genjutsu) or 0) * 0.50;
            					sheet.CDE = (tonumber(sheet.Elemental1) or 0) * 0.50;
            					sheet.CDA = (tonumber(sheet.DanoArmado) or 0) * 0.50;
            					sheet.CHP = (tonumber(sheet.HP) or 0) * 0.50;
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.50;
            				end;
            				
            				if sheet.Cla == 'Kazumi' then
            					sheet.CNin = (tonumber(sheet.Ninjutsu) or 0) * 0.10;
            					sheet.CGen = (tonumber(sheet.Genjutsu) or 0) * 0.10;
            					sheet.CAG = 5;
            				end;
            
            				if sheet.Cla == 'Kouga' then
            				end;
            				
            				if sheet.Cla == 'Miroku' then
            				end;
            				
            				if sheet.Cla == 'Mitsu' then
            					sheet.CNin = (tonumber(sheet.Ninjutsu) or 0) * 0.10;
            				end;
            				
            				if sheet.Cla == 'Nakamura' then
            				end;
            				
            				if sheet.Cla == 'Natsume' then
            					sheet.CAT = 5;
            					sheet.CCRT = 5;
            					sheet.CBloq = 5;
            					sheet.CEsq = 3;
            				end;
            				
            				if sheet.Cla == 'Neko' then
            				end;
            				
            				if sheet.Cla == 'Neon' then
            					sheet.CNin = (tonumber(sheet.Ninjutsu) or 0) * 0.10;
            					sheet.CChakra = (tonumber(sheet.Chakra) or 0) * 0.30;
            					sheet.CAN = 5;
            					sheet.CCRN = 5;
            				end;
            				
            				if sheet.Cla == 'Shinkara' then
            					sheet.CHP = (tonumber(sheet.HP) or 0) * 0.10;
            				end;
            				
            				if sheet.Cla == '' then
            					sheet.CHP = (tonumber(sheet.HP) or 0) * 0.10;
            				end;
        end, obj);

    obj._e_event23 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.TipoOutro == 'ChakraBiju' then
            						sheet.Outros = (tonumber(sheet.ChakraBiju) or 0);
            					end;
            					
            					if sheet.TipoOutro == 'ChakraBranco' then
            						sheet.Outros = (tonumber(sheet.ChakraBranco) or 0);
            					end;
            					
            					if sheet.TipoOutro == 'ChakraPreto' then
            						sheet.Outros = (tonumber(sheet.ChakraPreto) or 0);
            					end;
            					
            					if sheet.TipoOutro == 'Hadou' then
            						sheet.Outros = (tonumber(sheet.Hadou) or 0);
            					end;
            					
            					if sheet.TipoOutro == 'HadouNegro' then
            						sheet.Outros = (tonumber(sheet.HadouNegro) or 0);
            					end;
            				   
            					if sheet.TipoOutro == 'ChakraNatural' then
            						sheet.Outros = (tonumber(sheet.ChakraNatural) or 0);
            					end;
            					
            					if sheet.TipoOutro == 'ChakraRoxo' then
            						sheet.Outros = (tonumber(sheet.ChakraRoxo) or 0);
            					end;
        end, obj);

    obj._e_event24 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.Graduacao == 'Academico' then
            						sheet.GTurno = 1;
            					end;
            					
            					if sheet.Graduacao == 'Genin' then
            						sheet.GAcertoTai = 2;
            						sheet.GAcertoNin = 2;
            						sheet.GAcertoGen = 2;
            						sheet.GEsquiva = 2;
            						sheet.GBloqueio = 3;
            					end;
            					
            					if sheet.Graduacao == 'Chunin' then
            						sheet.GAcertoTai = 4;
            						sheet.GAcertoNin = 4;
            						sheet.GAcertoGen = 4;
            						sheet.GEsquiva = 4;
            						sheet.GBloqueio = 6;
            					end;
            					
            					if sheet.Graduacao == 'Jounin' then
            						sheet.GAcertoTai = 6;
            						sheet.GAcertoNin = 6;
            						sheet.GAcertoGen = 6;
            						sheet.GEsquiva = 6;
            						sheet.GBloqueio = 9;
            						sheet.GTurno = 2;
            						sheet.GCRTai = 3;
            						sheet.GCRNin = 3;
            						sheet.GCRGen = 3;
            					end;
            					
            					if sheet.Graduacao == 'Anbu' then
            						sheet.GAcertoTai = 8;
            						sheet.GAcertoNin = 8;
            						sheet.GAcertoGen = 8;
            						sheet.GEsquiva = 8;
            						sheet.GBloqueio = 12;
            					end;
            				   
            					if sheet.Graduacao == 'AnbuNucleo' then
            						sheet.GAcertoTai = 10;
            						sheet.GAcertoNin = 10;
            						sheet.GAcertoGen = 10;
            						sheet.GEsquiva = 10;
            						sheet.GBloqueio = 15;
            						sheet.GCRTai = 6;
            						sheet.GCRNin = 6;
            						sheet.GCRGen = 6;
            					end;
            					
            					if sheet.Graduacao == 'Organização' then
            						sheet.GAcertoTai = 12;
            						sheet.GAcertoNin = 12;
            						sheet.GAcertoGen = 12;
            						sheet.GEsquiva = 12;
            						sheet.GBloqueio = 18;
            					end;					
            									
            					if sheet.Graduacao == 'GDE' then
            						sheet.GAcertoTai = 14;
            						sheet.GAcertoNin = 14;
            						sheet.GAcertoGen = 14;
            						sheet.GEsquiva = 14;
            						sheet.GBloqueio = 21;
            						sheet.GCRTai = 9;
            						sheet.GCRNin = 9;
            						sheet.GCRGen = 9;
            					end;					
            									
            					if sheet.Graduacao == 'Concelheiro' then
            						sheet.GAcertoTai = 16;
            						sheet.GAcertoNin = 16;
            						sheet.GAcertoGen = 16;
            						sheet.GEsquiva = 16;
            						sheet.GBloqueio = 24;
            					end;					
            									
            					if sheet.Graduacao == 'Kage' then
            						sheet.GAcertoTai = 18;
            						sheet.GAcertoNin = 18;
            						sheet.GAcertoGen = 18;
            						sheet.GEsquiva = 20;
            						sheet.GBloqueio = 30;
            						sheet.GTurno = 3;
            						sheet.GCRTai = 14;
            						sheet.GCRNin = 14;
            						sheet.GCRGen = 14;
            					end;
        end, obj);

    obj._e_event25 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.Taijutsu = (tonumber(sheet.Forca) or 0) * 2;
            				sheet.Ninjutsu = (tonumber(sheet.Inteligencia) or 0) * 2;
            				sheet.Genjutsu = (tonumber(sheet.Sabedoria) or 0) * 2;
            				sheet.Elemental1 = (tonumber(sheet.Sabedoria) or 0) + (tonumber(sheet.Inteligencia) or 0);
            				sheet.DanoArmado = (tonumber(sheet.Forca) or 0) + (tonumber(sheet.Habilidade) or 0);
        end, obj);

    obj._e_event26 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.TaiTotal = (tonumber(sheet.ArmaDT) or 0) + (tonumber(sheet.AcessorioDT) or 0) + (tonumber(sheet.DTaijutsu) or 0) + (tonumber(sheet.CTai) or 0) + (tonumber(sheet.Taijutsu) or 0);
            				sheet.NinTotal = (tonumber(sheet.ArmaDN) or 0) + (tonumber(sheet.AcessorioDN) or 0) + (tonumber(sheet.DNinjutsu) or 0) + (tonumber(sheet.CNin) or 0) + (tonumber(sheet.Ninjutsu) or 0);
            				sheet.GenTotal = (tonumber(sheet.ArmaDG) or 0) + (tonumber(sheet.AcessorioDG) or 0) + (tonumber(sheet.DGenjutsu) or 0) + (tonumber(sheet.CGen) or 0) + (tonumber(sheet.Genjutsu) or 0);
            				sheet.EleTotal = (tonumber(sheet.ArmaDE) or 0) + (tonumber(sheet.AcessorioDE) or 0) + (tonumber(sheet.DDE) or 0) + (tonumber(sheet.CDE) or 0) + (tonumber(sheet.Elemental1) or 0);
            				sheet.DATotal = (tonumber(sheet.ArmaDA) or 0) + (tonumber(sheet.DDA) or 0) + (tonumber(sheet.CDA) or 0) + (tonumber(sheet.DanoArmado) or 0);
            				sheet.TaiTotal = math.ceil(sheet.TaiTotal);
            				sheet.NinTotal = math.ceil(sheet.NinTotal);
            				sheet.GenTotal = math.ceil(sheet.GenTotal);
            				sheet.EleTotal = math.ceil(sheet.EleTotal);
            				sheet.DATotal = math.ceil(sheet.DATotal);
        end, obj);

    obj._e_event27 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.HP = (tonumber(sheet.Resistencia) or 0) * 10 + (tonumber(sheet.GHP) or 0);
            				sheet.HPTotal = (tonumber(sheet.HP) or 0) + (tonumber(sheet.CHP) or 0) + (tonumber(sheet.DHP) or 0) + (tonumber(sheet.AcessorioHP) or 0) + (tonumber(sheet.ColeteHP) or 0) + (tonumber(sheet.BandanaHP) or 0) + (tonumber(sheet.ArmaHP) or 0);
        end, obj);

    obj._e_event28 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.Idade2 = (tonumber(sheet.Idade) or 0);		
            				if sheet.Idade2 > 40 then
            					sheet.Idade2 = 40;
            				end;
            				sheet.Chakra = (tonumber(sheet.Idade2) or 0) * 25  + (tonumber(sheet.Level) or 0);
            				sheet.ChakraTotal = (tonumber(sheet.Chakra) or 0) + (tonumber(sheet.ArmaChakra) or 0) + (tonumber(sheet.BandanaChakra) or 0) + (tonumber(sheet.ColeteChakra) or 0) + (tonumber(sheet.AcessorioChakra) or 0) +
            				(tonumber(sheet.DChakra) or 0) + (tonumber(sheet.GChakra) or 0) + (tonumber(sheet.CChakra) or 0);
        end, obj);

    obj._e_event29 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.ReiatsuLevel = (tonumber(sheet.Level) or 0) * 0.15;
            				sheet.Reiatsu = (tonumber(sheet.TaiTotal) or 0) + (tonumber(sheet.NinTotal) or 0) + (tonumber(sheet.GenTotal) or 0) + (tonumber(sheet.DATotal) or 0) + (tonumber(sheet.EleTotal) or 0) * (tonumber(sheet.ReiatsuLevel) or 0);
            				sheet.ReiatsuTotal = (tonumber(sheet.Reiatsu) or 0) + (tonumber(sheet.DReiatsu) or 0);
        end, obj);

    obj._e_event30 = obj.button17:addEventListener("onClick",
        function (_)
            self.POPKunai:show();
        end, obj);

    obj._e_event31 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.DanoKunai = (tonumber(sheet.Habilidade) or 0);
            					sheet.DanoShuriken = (tonumber(sheet.Habilidade) or 0) * 0.50;
            					sheet.DanoShurikenFuuma = (tonumber(sheet.Habilidade) or 0) * 3;
            					sheet.DanoKunaiGigante = (tonumber(sheet.Habilidade) or 0) * 2;
            					sheet.Senbon = (tonumber(sheet.Habilidade) or 0) * 0.40;
            					
            					sheet.PB = (tonumber(sheet.Inteligencia) or 0);
            					sheet.GinsoExplosivo = (tonumber(sheet.Inteligencia) or 0) * 2;	
            					sheet.Veneno = (tonumber(sheet.Sabedoria) or 0);
            					sheet.Bandagem = (tonumber(sheet.Sabedoria) or 0) /2 + (tonumber(sheet.Inteligencia) or 0) /2 + (tonumber(sheet.Forca) or 0) /2;
        end, obj);

    obj._e_event32 = obj.button18:addEventListener("onClick",
        function (_)
            self.POPPB:show();
        end, obj);

    obj._e_event33 = obj.button19:addEventListener("onClick",
        function (_)
            self.POPDiverso:show();
        end, obj);

    obj._e_event34 = obj.button20:addEventListener("onClick",
        function (_)
            self.POPPergaminho1:show();
        end, obj);

    obj._e_event35 = obj.button21:addEventListener("onClick",
        function (_)
            Pergaminho1()
        end, obj);

    obj._e_event36 = obj.button22:addEventListener("onClick",
        function (_)
            self.POPPergaminho2:show();
        end, obj);

    obj._e_event37 = obj.button23:addEventListener("onClick",
        function (_)
            Pergaminho2()
        end, obj);

    obj._e_event38 = obj.button24:addEventListener("onClick",
        function (_)
            self.POPPergaminho3:show();
        end, obj);

    obj._e_event39 = obj.button25:addEventListener("onClick",
        function (_)
            Pergaminho3()
        end, obj);

    obj._e_event40 = obj.button26:addEventListener("onClick",
        function (_)
            self.EstilodeCombate:show();
        end, obj);

    obj._e_event41 = obj.button27:addEventListener("onClick",
        function (_)
            RolarTesteAtletismo()
        end, obj);

    obj._e_event42 = obj.button28:addEventListener("onClick",
        function (_)
            RolarTesteSabedoria()
        end, obj);

    obj._e_event43 = obj.button29:addEventListener("onClick",
        function (_)
            RolarTestePercepcao()
        end, obj);

    obj._e_event44 = obj.button30:addEventListener("onClick",
        function (_)
            RolarTesteAcrobacia()
        end, obj);

    obj._e_event45 = obj.button31:addEventListener("onClick",
        function (_)
            RolarTesteVigor()
        end, obj);

    obj._e_event46 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.Atletismo == nil then
            							sheet.Atletismo = 0;
            						end;					
            						if sheet.Raciocinio == nil then
            							sheet.Raciocinio = 0;
            						end;						
            						if sheet.Percepcao == nil then
            							sheet.Percepcao = 0;
            						end;						
            						if sheet.Furtividade == nil then
            							sheet.Furtividade = 0;
            						end;						
            						if sheet.Vigor == nil then
            							sheet.Vigor = 0;
            						end;		
            							
            						if sheet.SAtletismo == nil then
            							sheet.SAtletismo = 0;
            						end;	
            						if sheet.SRaciocinio == nil then
            							sheet.SRaciocinio = 0;
            						end;	
            						if sheet.SPercepcao == nil then
            							sheet.SPercepcao = 0;
            						end;						
            						if sheet.SFurtividade == nil then
            							sheet.SFurtividade = 0;
            						end;	
            						if sheet.SVigor == nil then
            							sheet.SVigor = 0;
            						end;
            											
            						if sheet.GAtletismo == nil then
            							sheet.GAtletismo = 0;
            						end;	
            						if sheet.GRaciocinio == nil then
            							sheet.GRaciocinio = 0;
            						end;	
            						if sheet.GPercepcao == nil then
            							sheet.GPercepcao = 0;
            						end;						
            						if sheet.GFurtividade == nil then
            							sheet.GFurtividade = 0;
            						end;	
            						if sheet.GVigor == nil then
            							sheet.GVigor = 0;
            						end;
            						
            						if sheet.AtletismoTotal == nil then
            							sheet.AtletismoTotal = 0;
            						end;	
            						if sheet.RaciocinioTotal == nil then
            							sheet.RaciocinioTotal = 0;
            						end;	
            						if sheet.PercepcaoTotal == nil then
            							sheet.PercepcaoTotal = 0;
            						end;						
            						if sheet.FurtividadeTotal == nil then
            							sheet.FurtividadeTotal = 0;
            						end;	
            						if sheet.VigorTotal == nil then
            							sheet.VigorTotal = 0;
            						end;
            						
            						if sheet.Graduacao =='Genin' then
            							sheet.GAtletismo = 1;
            							sheet.GRaciocinio = 1;
            							sheet.GPercepcao = 1;
            							sheet.GFurtividade = 1;
            							sheet.GVigor = 1;
            						end;
            						
            						if sheet.Graduacao =='Jounin' then
            							sheet.GAtletismo = 2;
            							sheet.GRaciocinio = 2;
            							sheet.GPercepcao = 2;
            							sheet.GFurtividade = 2;
            							sheet.GVigor = 2;
            						end;
            						
            						if sheet.Graduacao =='Anbu Nucleo' then
            							sheet.GAtletismo = 3;
            							sheet.GRaciocinio = 3;
            							sheet.GPercepcao = 3;
            							sheet.GFurtividade = 3;
            							sheet.GVigor = 3;
            						end;
            						
            						if sheet.Graduacao =='GDE' then
            							sheet.GAtletismo = 4;
            							sheet.GRaciocinio = 4;
            							sheet.GPercepcao = 4;
            							sheet.GFurtividade = 4;
            							sheet.GVigor = 4;
            						end;
            						
            						if sheet.Graduacao =='Kage' then
            							sheet.GAtletismo = 6;
            							sheet.GRaciocinio = 6;
            							sheet.GPercepcao = 6;
            							sheet.GFurtividade = 6;
            							sheet.GVigor = 6;
            						end;
            						
            						if sheet.Forca >= 100000000 then
            							sheet.SAtletismo = 5;
            						elseif sheet.Forca >= 10000000 then
            							sheet.SAtletismo = 4;
            						elseif sheet.Forca >= 1000000 then
            							sheet.SAtletismo = 3;
            						elseif sheet.Forca >= 100000 then
            							sheet.SAtletismo = 2;
            						elseif sheet.Forca >= 10000 then
            							sheet.SAtletismo = 1;	
            						else
            							sheet.SVigor = 0;
            						end;	
            						
            						if sheet.Inteligencia >= 100000000 then
            							sheet.SRaciocinio = 5;
            						elseif sheet.Sabedoria >= 100000000 then
            							sheet.SRaciocinio = 5;	
            						elseif sheet.Inteligencia >= 10000000 then
            							sheet.SRaciocinio = 4;
            						elseif sheet.Sabedoria >= 10000000 then
            							sheet.SRaciocinio = 4;	
            						elseif sheet.Inteligencia >= 1000000 then
            							sheet.SRaciocinio = 3;
            						elseif sheet.Sabedoria >= 1000000 then
            							sheet.SRaciocinio = 3;	
            						elseif sheet.Inteligencia >= 100000 then
            							sheet.SRaciocinio = 2;
            						elseif sheet.Sabedoria >= 100000 then
            							sheet.SRaciocinio = 2;
            						elseif sheet.Sabedoria >= 10000 then
            							sheet.SRaciocinio = 1;	
            						elseif sheet.Inteligencia >= 10000 then
            							sheet.SRaciocinio = 1;	
            						else
            							sheet.SRaciocinio = 0;
            						end; 
            						
            						if sheet.Habilidade >= 500000000 then
            							sheet.SPercepcao = 5;
            							sheet.SFurtividade = 5;
            						elseif sheet.Habilidade >= 50000000 then
            							sheet.SPercepcao = 4;
            							sheet.SFurtividade = 4;
            						elseif sheet.Habilidade >= 5000000 then
            							sheet.SPercepcao = 3;
            							sheet.SFurtividade = 3;
            						elseif sheet.Habilidade >= 500000 then
            							sheet.SPercepcao = 2;
            							sheet.SFurtividade = 2;
            						elseif sheet.Habilidade >= 50000 then
            							sheet.SPercepcao = 1;	
            							sheet.SFurtividade = 1;
            						else 
            							sheet.SPercepcao = 0;
            							sheet.SFurtividade = 0;
            						end; 
            						
            						if sheet.Resistencia >= 100000000 then
            							sheet.SVigor = 5;
            						elseif sheet.Resistencia >= 10000000 then
            							sheet.SVigor = 4;
            						elseif sheet.Resistencia >= 1000000 then
            							sheet.SVigor = 3;
            						elseif sheet.Resistencia >= 100000 then
            							sheet.SVigor = 2;
            						elseif sheet.Resistencia >= 10000 then
            							sheet.SVigor = 1;	
            						else
            							sheet.SVigor = 0;
            						end;	
            
            						sheet.AtletismoTotal = tonumber(sheet.SAtletismo) + tonumber(sheet.GAtletismo) + tonumber(sheet.Atletismo);
            						sheet.RaciocinioTotal = tonumber(sheet.SRaciocinio) + tonumber(sheet.GRaciocinio) + tonumber(sheet.Raciocinio);
            						sheet.PercepcaoTotal = tonumber(sheet.SPercepcao) + tonumber(sheet.GPercepcao) + tonumber(sheet.Percepcao);
            						sheet.FurtividadeTotal = tonumber(sheet.SFurtividade) + tonumber(sheet.GFurtividade) + tonumber(sheet.Furtividade);
            						sheet.VigorTotal = tonumber(sheet.SVigor) + tonumber(sheet.GVigor) + tonumber(sheet.Vigor);
        end, obj);

    obj._e_event47 = obj.dataLink13:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.AcertoTaiTotal = (tonumber(sheet.GAcertoTai) or 0) + (tonumber(sheet.CAT) or 0) + (tonumber(sheet.DAcertoTai) or 0) + 60;
            						sheet.AcertoNinTotal = (tonumber(sheet.GAcertoNin) or 0) + (tonumber(sheet.CAN) or 0) + (tonumber(sheet.DAcertoNin) or 0) + 60;	
            						sheet.AcertoGenTotal = (tonumber(sheet.GAcertoGen) or 0) + (tonumber(sheet.CAG) or 0) + (tonumber(sheet.DAcertoGen) or 0) + 60;
            						sheet.EsquivaTotal = (tonumber(sheet.GEsquiva) or 0) + (tonumber(sheet.CEsq) or 0) + (tonumber(sheet.DEsquiva) or 0) + 20;
            						sheet.BloqueioTotal = (tonumber(sheet.GBloqueio) or 0) + (tonumber(sheet.CBloq) or 0) + (tonumber(sheet.DBloqueio) or 0) + 30;
            						sheet.CRTaiTotal = (tonumber(sheet.GCRTai) or 0) + (tonumber(sheet.CCRT) or 0) + (tonumber(sheet.DCriticalTai) or 0) + 1;
            						sheet.CRNinTotal = (tonumber(sheet.GCRNin) or 0) + (tonumber(sheet.CCRN) or 0) + (tonumber(sheet.DCriticalNin) or 0) + 1;
            						sheet.CRGenTotal = (tonumber(sheet.GCRGen) or 0) + (tonumber(sheet.CCRG) or 0) + (tonumber(sheet.DCriticalGen) or 0) + 1;
            						sheet.TurnoTotal = (tonumber(sheet.GTurno) or 0) + 1;
        end, obj);

    obj._e_event48 = obj.button32:addEventListener("onClick",
        function (_)
            self.POPArma:show();
        end, obj);

    obj._e_event49 = obj.button33:addEventListener("onClick",
        function (_)
            self.POPBandana:show();
        end, obj);

    obj._e_event50 = obj.button34:addEventListener("onClick",
        function (_)
            self.POPColete:show();
        end, obj);

    obj._e_event51 = obj.button35:addEventListener("onClick",
        function (_)
            self.POPAcessorio:show();
        end, obj);

    obj._e_event52 = obj.button36:addEventListener("onClick",
        function (_)
            self.POPBAG:show();
        end, obj);

    obj._e_event53 = obj.button37:addEventListener("onClick",
        function (_)
            -- Usuário clicou no botão de criar novo item.
            								-- Vamos inserir um novo item no nosso recordList                              
            								self.rclListaDosItens4:append();
        end, obj);

    obj._e_event54 = obj.rclListaDosItens4:addEventListener("onSelect",
        function (_)
            --[[
            							Este evento é chamado quando o usuário selecionar/deselecionar itens da lista. Quando o usuário selecionar, vamos fazer nosso dataScopeBox 
            							(e todas as tag dentro dele) salvar e carregar dados no   objeto Nodo (NodeDatabase) do item selecionado.
            							--]]                      
            							local node = self.rclListaDosItens4.selectedNode; 
            							self.boxDetalhesDoItem.node = node;                       
            							-- a caixa de detalhe só ficará visível se houver item selecionado
            							self.boxDetalhesDoItem.visible = (node ~= nil);
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event54);
        __o_rrpgObjs.removeEventListenerById(self._e_event53);
        __o_rrpgObjs.removeEventListenerById(self._e_event52);
        __o_rrpgObjs.removeEventListenerById(self._e_event51);
        __o_rrpgObjs.removeEventListenerById(self._e_event50);
        __o_rrpgObjs.removeEventListenerById(self._e_event49);
        __o_rrpgObjs.removeEventListenerById(self._e_event48);
        __o_rrpgObjs.removeEventListenerById(self._e_event47);
        __o_rrpgObjs.removeEventListenerById(self._e_event46);
        __o_rrpgObjs.removeEventListenerById(self._e_event45);
        __o_rrpgObjs.removeEventListenerById(self._e_event44);
        __o_rrpgObjs.removeEventListenerById(self._e_event43);
        __o_rrpgObjs.removeEventListenerById(self._e_event42);
        __o_rrpgObjs.removeEventListenerById(self._e_event41);
        __o_rrpgObjs.removeEventListenerById(self._e_event40);
        __o_rrpgObjs.removeEventListenerById(self._e_event39);
        __o_rrpgObjs.removeEventListenerById(self._e_event38);
        __o_rrpgObjs.removeEventListenerById(self._e_event37);
        __o_rrpgObjs.removeEventListenerById(self._e_event36);
        __o_rrpgObjs.removeEventListenerById(self._e_event35);
        __o_rrpgObjs.removeEventListenerById(self._e_event34);
        __o_rrpgObjs.removeEventListenerById(self._e_event33);
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.edit150 ~= nil then self.edit150:destroy(); self.edit150 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.button15 ~= nil then self.button15:destroy(); self.button15 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.edit172 ~= nil then self.edit172:destroy(); self.edit172 = nil; end;
        if self.edit195 ~= nil then self.edit195:destroy(); self.edit195 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.POPCALCULO ~= nil then self.POPCALCULO:destroy(); self.POPCALCULO = nil; end;
        if self.button16 ~= nil then self.button16:destroy(); self.button16 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.edit76 ~= nil then self.edit76:destroy(); self.edit76 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.edit82 ~= nil then self.edit82:destroy(); self.edit82 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.button35 ~= nil then self.button35:destroy(); self.button35 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.POPFavorito ~= nil then self.POPFavorito:destroy(); self.POPFavorito = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.POPPB ~= nil then self.POPPB:destroy(); self.POPPB = nil; end;
        if self.POPArma ~= nil then self.POPArma:destroy(); self.POPArma = nil; end;
        if self.edit183 ~= nil then self.edit183:destroy(); self.edit183 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.POPDiverso ~= nil then self.POPDiverso:destroy(); self.POPDiverso = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.comboBox10 ~= nil then self.comboBox10:destroy(); self.comboBox10 = nil; end;
        if self.edit156 ~= nil then self.edit156:destroy(); self.edit156 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.button37 ~= nil then self.button37:destroy(); self.button37 = nil; end;
        if self.image11 ~= nil then self.image11:destroy(); self.image11 = nil; end;
        if self.button36 ~= nil then self.button36:destroy(); self.button36 = nil; end;
        if self.edit69 ~= nil then self.edit69:destroy(); self.edit69 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.button21 ~= nil then self.button21:destroy(); self.button21 = nil; end;
        if self.edit115 ~= nil then self.edit115:destroy(); self.edit115 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.edit205 ~= nil then self.edit205:destroy(); self.edit205 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        if self.edit116 ~= nil then self.edit116:destroy(); self.edit116 = nil; end;
        if self.button26 ~= nil then self.button26:destroy(); self.button26 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.edit77 ~= nil then self.edit77:destroy(); self.edit77 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.edit159 ~= nil then self.edit159:destroy(); self.edit159 = nil; end;
        if self.edit196 ~= nil then self.edit196:destroy(); self.edit196 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.image9 ~= nil then self.image9:destroy(); self.image9 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.POPBandana ~= nil then self.POPBandana:destroy(); self.POPBandana = nil; end;
        if self.edit66 ~= nil then self.edit66:destroy(); self.edit66 = nil; end;
        if self.edit129 ~= nil then self.edit129:destroy(); self.edit129 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.edit142 ~= nil then self.edit142:destroy(); self.edit142 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.EstilodeCombate ~= nil then self.EstilodeCombate:destroy(); self.EstilodeCombate = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rclListaDosItens1 ~= nil then self.rclListaDosItens1:destroy(); self.rclListaDosItens1 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.image10 ~= nil then self.image10:destroy(); self.image10 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.edit99 ~= nil then self.edit99:destroy(); self.edit99 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.edit182 ~= nil then self.edit182:destroy(); self.edit182 = nil; end;
        if self.edit67 ~= nil then self.edit67:destroy(); self.edit67 = nil; end;
        if self.edit176 ~= nil then self.edit176:destroy(); self.edit176 = nil; end;
        if self.edit124 ~= nil then self.edit124:destroy(); self.edit124 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit157 ~= nil then self.edit157:destroy(); self.edit157 = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.edit83 ~= nil then self.edit83:destroy(); self.edit83 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.button33 ~= nil then self.button33:destroy(); self.button33 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.edit161 ~= nil then self.edit161:destroy(); self.edit161 = nil; end;
        if self.richEdit2 ~= nil then self.richEdit2:destroy(); self.richEdit2 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.edit74 ~= nil then self.edit74:destroy(); self.edit74 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.POPKunai ~= nil then self.POPKunai:destroy(); self.POPKunai = nil; end;
        if self.edit134 ~= nil then self.edit134:destroy(); self.edit134 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.edit121 ~= nil then self.edit121:destroy(); self.edit121 = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.edit163 ~= nil then self.edit163:destroy(); self.edit163 = nil; end;
        if self.button28 ~= nil then self.button28:destroy(); self.button28 = nil; end;
        if self.scrollBox7 ~= nil then self.scrollBox7:destroy(); self.scrollBox7 = nil; end;
        if self.edit199 ~= nil then self.edit199:destroy(); self.edit199 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.edit92 ~= nil then self.edit92:destroy(); self.edit92 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.comboBox6 ~= nil then self.comboBox6:destroy(); self.comboBox6 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.edit100 ~= nil then self.edit100:destroy(); self.edit100 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.edit84 ~= nil then self.edit84:destroy(); self.edit84 = nil; end;
        if self.button30 ~= nil then self.button30:destroy(); self.button30 = nil; end;
        if self.image25 ~= nil then self.image25:destroy(); self.image25 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit198 ~= nil then self.edit198:destroy(); self.edit198 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.edit128 ~= nil then self.edit128:destroy(); self.edit128 = nil; end;
        if self.textEditor11 ~= nil then self.textEditor11:destroy(); self.textEditor11 = nil; end;
        if self.edit200 ~= nil then self.edit200:destroy(); self.edit200 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.edit187 ~= nil then self.edit187:destroy(); self.edit187 = nil; end;
        if self.edit103 ~= nil then self.edit103:destroy(); self.edit103 = nil; end;
        if self.image12 ~= nil then self.image12:destroy(); self.image12 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.edit127 ~= nil then self.edit127:destroy(); self.edit127 = nil; end;
        if self.edit165 ~= nil then self.edit165:destroy(); self.edit165 = nil; end;
        if self.ListaJutsus2 ~= nil then self.ListaJutsus2:destroy(); self.ListaJutsus2 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.button32 ~= nil then self.button32:destroy(); self.button32 = nil; end;
        if self.edit145 ~= nil then self.edit145:destroy(); self.edit145 = nil; end;
        if self.edit181 ~= nil then self.edit181:destroy(); self.edit181 = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.edit96 ~= nil then self.edit96:destroy(); self.edit96 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.comboBox7 ~= nil then self.comboBox7:destroy(); self.comboBox7 = nil; end;
        if self.button27 ~= nil then self.button27:destroy(); self.button27 = nil; end;
        if self.edit109 ~= nil then self.edit109:destroy(); self.edit109 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.button24 ~= nil then self.button24:destroy(); self.button24 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.edit174 ~= nil then self.edit174:destroy(); self.edit174 = nil; end;
        if self.edit152 ~= nil then self.edit152:destroy(); self.edit152 = nil; end;
        if self.edit133 ~= nil then self.edit133:destroy(); self.edit133 = nil; end;
        if self.image26 ~= nil then self.image26:destroy(); self.image26 = nil; end;
        if self.edit93 ~= nil then self.edit93:destroy(); self.edit93 = nil; end;
        if self.edit126 ~= nil then self.edit126:destroy(); self.edit126 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit81 ~= nil then self.edit81:destroy(); self.edit81 = nil; end;
        if self.edit177 ~= nil then self.edit177:destroy(); self.edit177 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.edit166 ~= nil then self.edit166:destroy(); self.edit166 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.edit184 ~= nil then self.edit184:destroy(); self.edit184 = nil; end;
        if self.POPKekegenkai ~= nil then self.POPKekegenkai:destroy(); self.POPKekegenkai = nil; end;
        if self.textEditor10 ~= nil then self.textEditor10:destroy(); self.textEditor10 = nil; end;
        if self.POPBAG ~= nil then self.POPBAG:destroy(); self.POPBAG = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.edit170 ~= nil then self.edit170:destroy(); self.edit170 = nil; end;
        if self.edit155 ~= nil then self.edit155:destroy(); self.edit155 = nil; end;
        if self.edit162 ~= nil then self.edit162:destroy(); self.edit162 = nil; end;
        if self.edit194 ~= nil then self.edit194:destroy(); self.edit194 = nil; end;
        if self.edit87 ~= nil then self.edit87:destroy(); self.edit87 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.edit113 ~= nil then self.edit113:destroy(); self.edit113 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.rclListaDosItens3 ~= nil then self.rclListaDosItens3:destroy(); self.rclListaDosItens3 = nil; end;
        if self.edit138 ~= nil then self.edit138:destroy(); self.edit138 = nil; end;
        if self.button31 ~= nil then self.button31:destroy(); self.button31 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.button18 ~= nil then self.button18:destroy(); self.button18 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.image15 ~= nil then self.image15:destroy(); self.image15 = nil; end;
        if self.edit118 ~= nil then self.edit118:destroy(); self.edit118 = nil; end;
        if self.edit154 ~= nil then self.edit154:destroy(); self.edit154 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.edit135 ~= nil then self.edit135:destroy(); self.edit135 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.edit191 ~= nil then self.edit191:destroy(); self.edit191 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.image13 ~= nil then self.image13:destroy(); self.image13 = nil; end;
        if self.edit102 ~= nil then self.edit102:destroy(); self.edit102 = nil; end;
        if self.edit178 ~= nil then self.edit178:destroy(); self.edit178 = nil; end;
        if self.edit117 ~= nil then self.edit117:destroy(); self.edit117 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.edit73 ~= nil then self.edit73:destroy(); self.edit73 = nil; end;
        if self.edit98 ~= nil then self.edit98:destroy(); self.edit98 = nil; end;
        if self.POPPergaminho2 ~= nil then self.POPPergaminho2:destroy(); self.POPPergaminho2 = nil; end;
        if self.edit185 ~= nil then self.edit185:destroy(); self.edit185 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.edit111 ~= nil then self.edit111:destroy(); self.edit111 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.edit71 ~= nil then self.edit71:destroy(); self.edit71 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.image20 ~= nil then self.image20:destroy(); self.image20 = nil; end;
        if self.edit85 ~= nil then self.edit85:destroy(); self.edit85 = nil; end;
        if self.edit201 ~= nil then self.edit201:destroy(); self.edit201 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.edit192 ~= nil then self.edit192:destroy(); self.edit192 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.edit153 ~= nil then self.edit153:destroy(); self.edit153 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.button20 ~= nil then self.button20:destroy(); self.button20 = nil; end;
        if self.edit131 ~= nil then self.edit131:destroy(); self.edit131 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.edit169 ~= nil then self.edit169:destroy(); self.edit169 = nil; end;
        if self.edit149 ~= nil then self.edit149:destroy(); self.edit149 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.comboBox3 ~= nil then self.comboBox3:destroy(); self.comboBox3 = nil; end;
        if self.edit160 ~= nil then self.edit160:destroy(); self.edit160 = nil; end;
        if self.edit120 ~= nil then self.edit120:destroy(); self.edit120 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.edit112 ~= nil then self.edit112:destroy(); self.edit112 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.edit114 ~= nil then self.edit114:destroy(); self.edit114 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.edit204 ~= nil then self.edit204:destroy(); self.edit204 = nil; end;
        if self.POPJutsu ~= nil then self.POPJutsu:destroy(); self.POPJutsu = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.edit68 ~= nil then self.edit68:destroy(); self.edit68 = nil; end;
        if self.edit72 ~= nil then self.edit72:destroy(); self.edit72 = nil; end;
        if self.edit179 ~= nil then self.edit179:destroy(); self.edit179 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.edit158 ~= nil then self.edit158:destroy(); self.edit158 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit106 ~= nil then self.edit106:destroy(); self.edit106 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit125 ~= nil then self.edit125:destroy(); self.edit125 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.button29 ~= nil then self.button29:destroy(); self.button29 = nil; end;
        if self.edit79 ~= nil then self.edit79:destroy(); self.edit79 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.image27 ~= nil then self.image27:destroy(); self.image27 = nil; end;
        if self.edit175 ~= nil then self.edit175:destroy(); self.edit175 = nil; end;
        if self.edit101 ~= nil then self.edit101:destroy(); self.edit101 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.edit164 ~= nil then self.edit164:destroy(); self.edit164 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.POPPergaminho1 ~= nil then self.POPPergaminho1:destroy(); self.POPPergaminho1 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.rclListaDosItens2 ~= nil then self.rclListaDosItens2:destroy(); self.rclListaDosItens2 = nil; end;
        if self.edit139 ~= nil then self.edit139:destroy(); self.edit139 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.POPColete ~= nil then self.POPColete:destroy(); self.POPColete = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.edit122 ~= nil then self.edit122:destroy(); self.edit122 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.edit110 ~= nil then self.edit110:destroy(); self.edit110 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.textEditor12 ~= nil then self.textEditor12:destroy(); self.textEditor12 = nil; end;
        if self.edit86 ~= nil then self.edit86:destroy(); self.edit86 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.edit123 ~= nil then self.edit123:destroy(); self.edit123 = nil; end;
        if self.edit143 ~= nil then self.edit143:destroy(); self.edit143 = nil; end;
        if self.image22 ~= nil then self.image22:destroy(); self.image22 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.edit105 ~= nil then self.edit105:destroy(); self.edit105 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.edit206 ~= nil then self.edit206:destroy(); self.edit206 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.edit137 ~= nil then self.edit137:destroy(); self.edit137 = nil; end;
        if self.edit146 ~= nil then self.edit146:destroy(); self.edit146 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.ListaJutsus3 ~= nil then self.ListaJutsus3:destroy(); self.ListaJutsus3 = nil; end;
        if self.edit90 ~= nil then self.edit90:destroy(); self.edit90 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.boxDetalhesDoItem ~= nil then self.boxDetalhesDoItem:destroy(); self.boxDetalhesDoItem = nil; end;
        if self.POPAcessorio ~= nil then self.POPAcessorio:destroy(); self.POPAcessorio = nil; end;
        if self.edit140 ~= nil then self.edit140:destroy(); self.edit140 = nil; end;
        if self.image18 ~= nil then self.image18:destroy(); self.image18 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit189 ~= nil then self.edit189:destroy(); self.edit189 = nil; end;
        if self.edit94 ~= nil then self.edit94:destroy(); self.edit94 = nil; end;
        if self.edit167 ~= nil then self.edit167:destroy(); self.edit167 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.image19 ~= nil then self.image19:destroy(); self.image19 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.textEditor13 ~= nil then self.textEditor13:destroy(); self.textEditor13 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.scrollBox8 ~= nil then self.scrollBox8:destroy(); self.scrollBox8 = nil; end;
        if self.edit104 ~= nil then self.edit104:destroy(); self.edit104 = nil; end;
        if self.edit207 ~= nil then self.edit207:destroy(); self.edit207 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit108 ~= nil then self.edit108:destroy(); self.edit108 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit80 ~= nil then self.edit80:destroy(); self.edit80 = nil; end;
        if self.edit95 ~= nil then self.edit95:destroy(); self.edit95 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.edit171 ~= nil then self.edit171:destroy(); self.edit171 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.image14 ~= nil then self.image14:destroy(); self.image14 = nil; end;
        if self.comboBox4 ~= nil then self.comboBox4:destroy(); self.comboBox4 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.edit186 ~= nil then self.edit186:destroy(); self.edit186 = nil; end;
        if self.edit97 ~= nil then self.edit97:destroy(); self.edit97 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.rclListaDosItens4 ~= nil then self.rclListaDosItens4:destroy(); self.rclListaDosItens4 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.edit147 ~= nil then self.edit147:destroy(); self.edit147 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.edit88 ~= nil then self.edit88:destroy(); self.edit88 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.edit89 ~= nil then self.edit89:destroy(); self.edit89 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.button34 ~= nil then self.button34:destroy(); self.button34 = nil; end;
        if self.POPPergaminho3 ~= nil then self.POPPergaminho3:destroy(); self.POPPergaminho3 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.image24 ~= nil then self.image24:destroy(); self.image24 = nil; end;
        if self.edit148 ~= nil then self.edit148:destroy(); self.edit148 = nil; end;
        if self.button22 ~= nil then self.button22:destroy(); self.button22 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.edit180 ~= nil then self.edit180:destroy(); self.edit180 = nil; end;
        if self.image16 ~= nil then self.image16:destroy(); self.image16 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.edit107 ~= nil then self.edit107:destroy(); self.edit107 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.edit197 ~= nil then self.edit197:destroy(); self.edit197 = nil; end;
        if self.edit141 ~= nil then self.edit141:destroy(); self.edit141 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.comboBox5 ~= nil then self.comboBox5:destroy(); self.comboBox5 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit75 ~= nil then self.edit75:destroy(); self.edit75 = nil; end;
        if self.edit193 ~= nil then self.edit193:destroy(); self.edit193 = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.edit130 ~= nil then self.edit130:destroy(); self.edit130 = nil; end;
        if self.button23 ~= nil then self.button23:destroy(); self.button23 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.edit144 ~= nil then self.edit144:destroy(); self.edit144 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.comboBox9 ~= nil then self.comboBox9:destroy(); self.comboBox9 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.image17 ~= nil then self.image17:destroy(); self.image17 = nil; end;
        if self.edit151 ~= nil then self.edit151:destroy(); self.edit151 = nil; end;
        if self.edit203 ~= nil then self.edit203:destroy(); self.edit203 = nil; end;
        if self.edit132 ~= nil then self.edit132:destroy(); self.edit132 = nil; end;
        if self.edit188 ~= nil then self.edit188:destroy(); self.edit188 = nil; end;
        if self.comboBox8 ~= nil then self.comboBox8:destroy(); self.comboBox8 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.edit119 ~= nil then self.edit119:destroy(); self.edit119 = nil; end;
        if self.button17 ~= nil then self.button17:destroy(); self.button17 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.button25 ~= nil then self.button25:destroy(); self.button25 = nil; end;
        if self.scrollBox6 ~= nil then self.scrollBox6:destroy(); self.scrollBox6 = nil; end;
        if self.edit168 ~= nil then self.edit168:destroy(); self.edit168 = nil; end;
        if self.edit190 ~= nil then self.edit190:destroy(); self.edit190 = nil; end;
        if self.textEditor14 ~= nil then self.textEditor14:destroy(); self.textEditor14 = nil; end;
        if self.edit78 ~= nil then self.edit78:destroy(); self.edit78 = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.edit202 ~= nil then self.edit202:destroy(); self.edit202 = nil; end;
        if self.edit91 ~= nil then self.edit91:destroy(); self.edit91 = nil; end;
        if self.edit70 ~= nil then self.edit70:destroy(); self.edit70 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.image23 ~= nil then self.image23:destroy(); self.image23 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.ListaJutsus ~= nil then self.ListaJutsus:destroy(); self.ListaJutsus = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.button19 ~= nil then self.button19:destroy(); self.button19 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.edit136 ~= nil then self.edit136:destroy(); self.edit136 = nil; end;
        if self.edit173 ~= nil then self.edit173:destroy(); self.edit173 = nil; end;
        if self.image21 ~= nil then self.image21:destroy(); self.image21 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmsekai()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmsekai();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmsekai = {
    newEditor = newfrmsekai, 
    new = newfrmsekai, 
    name = "frmsekai", 
    dataType = "com.Sekai", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Sekai 2", 
    description=""};

frmsekai = _frmsekai;
Firecast.registrarForm(_frmsekai);
Firecast.registrarDataType(_frmsekai);

return _frmsekai;

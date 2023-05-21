from PyQt5.QtCore import Qt, QTime ,QTimer
from PyQt5.QtWidgets import QApplication , QWidget ,QPushButton , QLabel, QVBoxLayout,  QLineEdit, QHBoxLayout
from random import randint
from instr import*
from final_win import*

a = ''
b = ''
c = ''
k = ''
class MainWinp(QWidget):
    def __init__(self):
        super().__init__()
        self.init_ui()
        self.button_click()
        self.set_appear()
        self.show()
        # self.s = s = 0
        # self.m = m = 0
        # self.h = h = 0
        # self.a = str(s) + '.' + str(m) + '.' + str(h)
        
    def set_appear(self):
        self.setWindowTitle(txt_title)
        self.resize(win_width,win_height)
        self.move(win_x,win_y)

    def init_ui(self):
        self.ii = '00:00:00'
        self.text_timer = QLabel(self.ii)

        #Создает заголовок
        self.winner = QLabel('Введите Ф.И.О.')
        self.input = QLineEdit()

        self.winner1 = QLabel('Сколько полных лет:')
        self.input1 = QLineEdit()

        self.winner2 = QLabel(txt_test1)
        self.input2 = QLineEdit()
        self.btn2 = QPushButton(txt_starttest1)
            
        self.winner3 = QLabel(txt_test2)
        self.input3 = QLineEdit()
        self.btn3 = QPushButton(txt_starttest2)

        self.winner4 = QLabel(txt_test3)
        self.input4 = QLineEdit()
        self.btn4 = QPushButton(txt_starttest3)

        self.l_line = QVBoxLayout()

        self.h_line = QHBoxLayout()

        self.v_line = QVBoxLayout()
        self.z_line = QVBoxLayout()

        self.h2_line = QHBoxLayout()
        self.k_line = QVBoxLayout()



        #создает кнопку
        self.btn = QPushButton('Отправить результаты')



        #привязываем линию
        self.setLayout(self.l_line)
        

        self.v_line.addWidget(self.winner,alignment = Qt.AlignLeft)
        self.v_line.addWidget(self.input,alignment = Qt.AlignLeft)
        

        self.v_line.addWidget(self.winner1,alignment = Qt.AlignLeft)
        self.v_line.addWidget(self.input1,alignment = Qt.AlignLeft)

        self.v_line.addWidget(self.winner2,alignment = Qt.AlignLeft)
        self.v_line.addWidget(self.input2,alignment = Qt.AlignLeft)
        self.v_line.addWidget(self.btn2,alignment = Qt.AlignLeft)

        self.z_line.addWidget(self.text_timer,alignment = Qt.AlignCenter)

        self.v_line.addWidget(self.winner3,alignment = Qt.AlignLeft)
        self.v_line.addWidget(self.input3,alignment = Qt.AlignLeft)
        self.v_line.addWidget(self.btn3,alignment = Qt.AlignLeft)

        self.v_line.addWidget(self.winner4,alignment = Qt.AlignLeft)
        self.v_line.addWidget(self.input4,alignment = Qt.AlignLeft)
        self.v_line.addWidget(self.btn4,alignment = Qt.AlignLeft)

        self.k_line.addWidget(self.btn,alignment = Qt.AlignCenter)
        #привязывает линию к окну
        # self.setLayout(self._line)
        self.l_line.addLayout(self.h_line)
        self.l_line.addLayout(self.h2_line)

        self.h2_line.addLayout(self.k_line)

        self.h_line.addLayout(self.v_line)
        self.h_line.addLayout(self.z_line)


    def show_q(self):
        global a
        a = int(self.input1.text())
        global k
        global b
        global c
        c = int(self.input1.text())
        b = int(self.input2.text())
        k1 = a + b + c
        k2 = 4 * k1
        k3 = k2 - 200
        k = k3/10
        self.hide()
        
        self.final_app = MainWinH(k,a)

    def show_t1(self):
        global time
        time = time.addSecs(-1)
        self.text_timer.setText(time.toString("hh:mm:ss"))
        if time.toString("hh:mm:ss") == "00:00:00":
            self.timer.stop()
    def show_t2(self):
        global time
        time = time.addSecs(-1)
        self.text_timer.setText(time.toString("hh:mm:ss"))
        if time.toString("hh:mm:ss") == "00:00:00":
            self.timer.stop()
    def show_t3(self):
        global time
        time = time.addSecs(-1)
        self.text_timer.setText(time.toString("hh:mm:ss"))
        if time.toString("hh:mm:ss") == "00:00:00":
            self.timer.stop()


    def timer_test1(self):
        global time
        time = QTime(0, 1, 0)
        self.timer = QTimer()
        self.timer.timeout.connect(self.show_t1)
        self.timer.start(1000)

    def timer_test2(self):
        global time
        time = QTime(0, 0, 30)
        self.timer = QTimer()
        self.timer.timeout.connect(self.show_t2)
        self.timer.start(1000)

    def timer_test3(self):
        global time
        time = QTime(0, 0, 15)
        self.timer = QTimer()
        self.timer.timeout.connect(self.show_t3)
        self.timer.start(1000)

    def button_click(self):
        self.btn.clicked.connect(self.show_q)

        self.btn2.clicked.connect(self.timer_test1)
        self.btn3.clicked.connect(self.timer_test2)
        self.btn4.clicked.connect(self.timer_test3)

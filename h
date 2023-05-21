from PyQt5.QtCore import Qt
from PyQt5.QtWidgets import QApplication , QWidget ,QPushButton , QLabel, QVBoxLayout
from random import randint
from instr import*
from second_win import*
app = QApplication([])
class MainWin(QWidget):
    def __init__(self):
        super().__init__()
        self.init_ui()
        self.button_click()
        self.set_appear()
        self.show()

    def set_appear(self):
        self.setWindowTitle(txt_title)
        self.resize(win_width,win_height)
        self.move(win_x,win_y)

    def init_ui(self):
        #создание окна

        self.v_line = QVBoxLayout()
        #создает кнопку
        self.btn = QPushButton('Начать')
        #Создает заголовок
        self.winner = QLabel(txt_hello)
        # устанавливает текст

        #создает текст внизу
        self.bn = QLabel(txt_instruction)
        #привязываем линию
        self.v_line.addWidget(self.winner)
        self.v_line.addWidget(self.btn)
        self.setLayout(self.v_line)
        self.v_line.addWidget(self.winner,alignment = Qt.AlignCenter)
        self.v_line.addWidget(self.bn,alignment = Qt.AlignCenter)
        self.v_line.addWidget(self.btn,alignment = Qt.AlignCenter)
        #привязывает линию к окну
        self.setLayout(self.v_line)
    def show_q(self):
        self.second_win = MainWinp()
        self.hide()

    def button_click(self):
        self.btn.clicked.connect(self.show_q)








Main = MainWin()


app.exec_()

Uses Crt;

var
  h, x, s, a, b, p, pl: real;
  i, n,m: integer;

function f(var x: real): real;
begin
  f := x ** 3 + x ** 2 + 3 * x + 17;
end;

function f1(var x: real): real;
begin
  f1 := power(x, 4) / 4 + power(x, 3) / 3 + power(x, 2) * 1.5 + 17 * x;
end;

procedure formul;
begin
  print('Реализовать программу вычисления площади фигуры,ограниченной кривой');
  print('1 * x^3 + (1) * x^2 + (3)*x + (17) и осью OX (в положительной части по оси OY');
  readkey;
end;

procedure proc1;
begin
  
  write('Введите начальную точку от -5 до 0, a=');
  read(a);
  write('Введите конечную точку от 0 до 5 b=');
  read(b);
  write('Введите количество отрезков от 20 до 1000 n=');
  read(n);
end;

procedure proc2;

begin
  h := (b - a) / n;
  x := a;
  s := (f(a) + f(b)) / 2;
  for var i := 1 to n - 1 do
  begin
    s += f(x);
    x += h
  end;
  s := s * h;
  write('s=', s:0:5);
  readkey;
end;

procedure proc3;
begin
  
  p := f1(b) - f1(a);
  writeln('Точная площадь = ', p:0:5);
  readkey;
end;

procedure proc4;
begin
  
  Pl := p - s;
  writeln('Погрешность = ', pl:0:5);
  readkey;
end;


begin
  repeat
    ClrScr;
    Writeln('Формулировка - 1');
    Writeln('Ввод значений - 2');
    Writeln('Вывод приблизительного значения - 3');
    Writeln('Вывод точного значения - 4');
    Writeln('Вывод погрешности - 5');
    Write('select program:');
    readln(m);
    case m of
      1: formul;
      2: proc1;
      3: proc2;
      4: proc3; 
      5: proc4;
    end;
  until n = 0;
end.
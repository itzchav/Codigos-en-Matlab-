
function varargout = interfaz_3(varargin)
% INTERFAZ_3 MATLAB code for interfaz_3.fig
%      INTERFAZ_3, by itself, creates a new INTERFAZ_3 or raises the existing
%      singleton*.
%
%      H = INTERFAZ_3 returns the handle to a new INTERFAZ_3 or the handle to
%      the existing singleton*.
%
%      INTERFAZ_3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFAZ_3.M with the given input arguments.
%
%      INTERFAZ_3('Property','Value',...) creates a new INTERFAZ_3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before interfaz_3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to interfaz_3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help interfaz_3

% Last Modified by GUIDE v2.5 28-Aug-2023 23:13:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @interfaz_3_OpeningFcn, ...
                   'gui_OutputFcn',  @interfaz_3_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before interfaz_3 is made visible.
function interfaz_3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to interfaz_3 (see VARARGIN)

% Choose default command line output for interfaz_3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes interfaz_3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = interfaz_3_OutputFcn(hObject, eventdata, handles) 
[a,map]=imread('images.jpg');
[r,c,d]=size(a);
x=ceil(r/140);
y=ceil(r/142);
g=a(1:x:end,1:y:end,:);
g(g==255)=255;
set(handles.imagen_simulink,'CData',g);

[a,map]=imread('arduino.jpg');
[r,c,d]=size(a);
x=ceil(r/140);
y=ceil(r/142);
g=a(1:x:end,1:y:end,:);
g(g==255)=255;
set(handles.arduino_imagen,'CData',g);

varargout{1} = handles.output;

% --- Executes on button press in imagen_simulink.
function imagen_simulink_Callback(hObject, eventdata, handles)
% hObject    handle to imagen_simulink (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in simulink_boton.
function simulink_boton_Callback(hObject, eventdata, handles)
suma=handles.metricdata.in_text+handles.metricdata.proporcional
set(handles.ejemplo,'String',suma)
[x,y]=simulink_function(handles.metricdata.in,handles.metricdata.proporcional)
plot(handles.grafica,x,y,'LineWidth',2,'color',"#FF00FF")



function in_Callback(hObject, eventdata, handles)
in = str2double(get(hObject, 'String'));
if isnan(in)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
% Save the new value
handles.metricdata.in_text = in;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function in_CreateFcn(hObject, eventdata, handles)
% hObject    handle to in (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function proporcional_Callback(hObject, eventdata, handles)
proporcional = str2double(get(hObject, 'String'));
if isnan(proporcional)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end
% Save the new value
handles.metricdata.proporcional = proporcional;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function proporcional_CreateFcn(hObject, eventdata, handles)
% hObject    handle to proporcional (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in opciones.
function opciones_SelectionChangedFcn(hObject, eventdata, handles)
handles.metricdata.in = 10
if (hObject == handles.auto)
    handles.metricdata.in = 10
else
    handles.metricdata.in = handles.metricdata.in_text
end
guidata(hObject,handles)


% --- Executes on button press in arduino_imagen.
function arduino_imagen_Callback(hObject, eventdata, handles)
% hObject    handle to arduino_imagen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in arduino_boton.
function arduino_boton_Callback(hObject, eventdata, handles)
[x,y]=arduino_lec()
plot(handles.grafica2,x,y,'b')

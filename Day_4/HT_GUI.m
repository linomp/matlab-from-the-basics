function varargout = HT_GUI(varargin)
% HT_GUI MATLAB code for HT_GUI.fig
%      HT_GUI, by itself, creates a new HT_GUI or raises the existing
%      singleton*.
%
%      H = HT_GUI returns the handle to a new HT_GUI or the handle to
%      the existing singleton*.
%
%      HT_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HT_GUI.M with the given input arguments.
%
%      HT_GUI('Property','Value',...) creates a new HT_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before HT_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to HT_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help HT_GUI

% Last Modified by GUIDE v2.5 23-Feb-2019 14:15:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @HT_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @HT_GUI_OutputFcn, ...
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


% --- Executes just before HT_GUI is made visible.
function HT_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to HT_GUI (see VARARGIN)

% Choose default command line output for HT_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes HT_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = HT_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function T_bot_wall_Callback(hObject, eventdata, handles)
% hObject    handle to T_bot_wall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T_bot_wall as text
%        str2double(get(hObject,'String')) returns contents of T_bot_wall as a double


% --- Executes during object creation, after setting all properties.
function T_bot_wall_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T_bot_wall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T_top_wall_Callback(hObject, eventdata, handles)
% hObject    handle to T_top_wall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T_top_wall as text
%        str2double(get(hObject,'String')) returns contents of T_top_wall as a double


% --- Executes during object creation, after setting all properties.
function T_top_wall_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T_top_wall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T_right_wall_Callback(hObject, eventdata, handles)
% hObject    handle to T_right_wall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T_right_wall as text
%        str2double(get(hObject,'String')) returns contents of T_right_wall as a double


% --- Executes during object creation, after setting all properties.
function T_right_wall_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T_right_wall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T_left_wall_Callback(hObject, eventdata, handles)
% hObject    handle to T_left_wall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T_left_wall as text
%        str2double(get(hObject,'String')) returns contents of T_left_wall as a double


% --- Executes during object creation, after setting all properties.
function T_left_wall_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T_left_wall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in go.
function go_Callback(hObject, eventdata, handles)
% hObject    handle to go (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% desactivar el boton hasta quese realice el cálculo
handles.go.Enable = 'off';

To = str2double( handles.To.String );
B = str2double( handles.B.String );
H = str2double( handles.H.String );
T_left_wall = str2double( handles.T_left_wall.String );
T_right_wall = str2double( handles.T_right_wall.String );
T_top_wall = str2double( handles.T_top_wall.String );
T_bot_wall = str2double( handles.T_bot_wall.String );

% almacenar referencia al eje de nuestra interface en una variable
parentAxis = handles.axes1;

% pasarle esa referencia a nuestro eje a la función para que se encargue de
% graficar específicamente en los ejes indicados
FD_HT(parentAxis, To, B, H, T_left_wall, T_right_wall, T_top_wall, T_bot_wall)

% volver a activar el boton
handles.go.Enable = 'on';



function H_Callback(hObject, eventdata, handles)
% hObject    handle to H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of H as text
%        str2double(get(hObject,'String')) returns contents of H as a double


% --- Executes during object creation, after setting all properties.
function H_CreateFcn(hObject, eventdata, handles)
% hObject    handle to H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B_Callback(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of B as text
%        str2double(get(hObject,'String')) returns contents of B as a double


% --- Executes during object creation, after setting all properties.
function B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function To_Callback(hObject, eventdata, handles)
% hObject    handle to To (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of To as text
%        str2double(get(hObject,'String')) returns contents of To as a double


% --- Executes during object creation, after setting all properties.
function To_CreateFcn(hObject, eventdata, handles)
% hObject    handle to To (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

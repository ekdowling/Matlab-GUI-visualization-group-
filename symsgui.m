function varargout = symsgui(varargin)
% SYMSGUI MATLAB code for symsgui.fig
%      SYMSGUI, by itself, creates a new SYMSGUI or raises the existing
%      singleton*.
%
%      H = SYMSGUI returns the handle to a new SYMSGUI or the handle to
%      the existing singleton*.
%
%      SYMSGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SYMSGUI.M with the given input arguments.
%
%      SYMSGUI('Property','Value',...) creates a new SYMSGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before symsgui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to symsgui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help symsgui

% Last Modified by GUIDE v2.5 19-Feb-2016 14:05:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @symsgui_OpeningFcn, ...
                   'gui_OutputFcn',  @symsgui_OutputFcn, ...
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


% --- Executes just before symsgui is made visible.
function symsgui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to symsgui (see VARARGIN)

% Choose default command line output for symsgui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes symsgui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = symsgui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function editvar1_Callback(hObject, eventdata, handles)
% hObject    handle to editvar1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editvar1 as text
%        str2double(get(hObject,'String')) returns contents of editvar1 as a double


% --- Executes during object creation, after setting all properties.
function editvar1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editvar1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms;
a = get(handles.editfunc,'String');
b = int(sym(a));
c=diff(sym(a));
set(handles.textint, 'String', char(b));



function editval1_Callback(hObject, eventdata, handles)
% hObject    handle to editval1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editval1 as text
%        str2double(get(hObject,'String')) returns contents of editval1 as a double


% --- Executes during object creation, after setting all properties.
function editval1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editval1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editfunc_Callback(hObject, eventdata, handles)
% hObject    handle to editfunc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editfunc as text
%        str2double(get(hObject,'String')) returns contents of editfunc as a double


% --- Executes during object creation, after setting all properties.
function editfunc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editfunc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textint_Callback(hObject, eventdata, handles)
% hObject    handle to textint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textint as text
%        str2double(get(hObject,'String')) returns contents of textint as a double


% --- Executes on button press in pushinputsyms.
function pushinputsyms_Callback(hObject, eventdata, handles)
% hObject    handle to pushinputsyms (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms;
a1 = get(handles.editvar1,'String');
a2 = get(handles.editvar2,'String');
a3 = get(handles.editvar3,'String');
%b = int(sym(a));
%c=diff(sym(a));
d=get(handles.editfunc,'String');
e1=str2double(get(handles.editval1,'String'));
e2=str2double(get(handles.editval2,'String'));
e3=str2double(get(handles.editval3,'String'));
r1=get(handles.radiovar1,'Value');%returns toggle state of radiobuttonz
r2=get(handles.radiovar2,'Value');
r3=get(handles.radiovar3,'Value');
if r1==1
   h=diff(sym(d),sym(a1));
   set(handles.textint, 'String', char(h));
  % hh=subs(h,a1,e1)
  % set(handles.editeval, 'String', char(hh));
elseif r2==1
   h=diff(sym(d),sym(a2));
   set(handles.textint, 'String', char(h));
  % hh=subs(h,a2,e2)
   %set(handles.editeval, 'String', char(hh));
elseif r3==1
   h=diff(sym(d),sym(a3));
   set(handles.textint, 'String', char(h));
%    hh=subs(h,a3,e3)
%    set(handles.editeval, 'String', char(hh));
end
hh=h;
if get(handles.checkvar1,'Value')==1
hh=subs(h,a1,e1);
end
if get(handles.checkvar2,'Value')==1   
hh=subs(hh,a2,e2);
end
if get(handles.checkvar3,'Value')==1
hh=subs(hh,a3,e3);
end
set(handles.editeval, 'String', char(hh));





function editeval_Callback(hObject, eventdata, handles)
% hObject    handle to editeval (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editeval as text
%        str2double(get(hObject,'String')) returns contents of editeval as a double



function editvar2_Callback(hObject, eventdata, handles)
% hObject    handle to editvar2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editvar2 as text
%        str2double(get(hObject,'String')) returns contents of editvar2 as a double


% --- Executes during object creation, after setting all properties.
function editvar2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editvar2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editval2_Callback(hObject, eventdata, handles)
% hObject    handle to editval2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editval2 as text
%        str2double(get(hObject,'String')) returns contents of editval2 as a double


% --- Executes during object creation, after setting all properties.
function editval2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editval2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editvar3_Callback(hObject, eventdata, handles)
% hObject    handle to editvar3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editvar3 as text
%        str2double(get(hObject,'String')) returns contents of editvar3 as a double


% --- Executes during object creation, after setting all properties.
function editvar3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editvar3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editval3_Callback(hObject, eventdata, handles)
% hObject    handle to editval3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editval3 as text
%        str2double(get(hObject,'String')) returns contents of editval3 as a double


% --- Executes during object creation, after setting all properties.
function editval3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editval3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkvar1.
function checkvar1_Callback(hObject, eventdata, handles)
% hObject    handle to checkvar1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkvar1


% --- Executes on button press in checkvar2.
function checkvar2_Callback(hObject, eventdata, handles)
% hObject    handle to checkvar2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkvar2


% --- Executes on button press in checkvar3.
function checkvar3_Callback(hObject, eventdata, handles)
% hObject    handle to checkvar3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkvar3

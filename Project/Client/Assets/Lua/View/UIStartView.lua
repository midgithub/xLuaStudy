if(UIBaseView == null) then
print("ssdsfsdfdsfa")
end

UIStartView = UIStartView or BaseClass(UIBaseView)
local this = UIStartView
local transform
local gameObject
function UIStartView.Awake(obj)
    gameObject = obj
    transform = obj.transform
    this.Init()
end

function UIStartView:__init()
    print("UIStartView   ______init")
end

function UIStartView.Init()
    print("初始化uistartview")

    this.startButton = transform:FindChild("ButtonGrid/StartButton"):GetComponent("UnityEngine.UI.Button")
    this.startButton.onClick:AddListener(this.OnStartButtonClick)

   
end

function UIStartView.Start()
end

function UIStartView.Update()
end

function UIStartView.OnDestroy()
    this.startButton.onClick = null
    this.startButton = null
    print("UIStartView.OnDestroy()")
end

function UIStartView.OnStartButtonClick()
    print("OnStartButtonClick()")

    local view = UIManager.FindUiByName("UIGameView")
    if (view == null) then
        UIManager.LoadUi("UIGameView")
    else
        view.gameObject.SetActive(true)
    end
end

function UIStartView.test()
    print("测试测试2   " .. this.c)
end
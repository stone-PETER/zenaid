import praw
from flask import Flask, request, jsonify
import categorize
import json

def post_Reddit(data):
    reddit=praw.Reddit(
        client_id="DfxYOG7o7z63i8_S05vXKQ",
        client_secret="jxKTocRaBanLF92KcuRH44y-YfU6hw",
        user_agent="Zenaid by Acquadron team",
        username="Acquadron_ZenAid",
        password="hacktodefy"
    )

    y = json.loads(data)

    title=y["title"]
    content=y["content"]
    subRed=categorize.classify(content)
    if y["nsfw"]=="True":
        nsfwState=True
    else: 
        nsfwState=False

    subreddit=reddit.subreddit(subRed)
    subredit.submit(title=title,nsfw=nsfwState,selftext=content,send_replies=False)


app = Flask(__name__)

@app.route('/')
def home():
    return "Hello. I am alive!"

@app.route('/receive_data', methods=['POST'])
def receive_data():
    if request.method == 'POST':
        data = request.data
        print(data) # Assuming data is sent as JSON
    # Process the received data
    #post_Reddit(data)
    response_data = {'message': 'Data received successfully'}
    return jsonify(response_data)

if __name__ == '__main__':
    app.run(debug=True)





package com.example.layouts


import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip


class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MessageCard(Message(author="DDD", body="Is who I mean to be"))
        }
    }
}

data class Message(val author: String, val body: String)

@Composable
fun MessageCard(msg: Message, color: Color = Color.Black) {
    Row (modifier = Modifier.padding(all = 8.dp)){

        Image(
            painter = painterResource(R.drawable.profile_image),
            contentDescription = "Contact profile picture",
            modifier = Modifier.size(50.dp).clip(CircleShape)
            )

        Spacer(modifier = Modifier.width(8.dp))

        Column{
            Text(text = msg.author, color = color)
            Spacer(modifier = Modifier.height(5.dp))
            Text(text = msg.body, color = color)
        }
    }
}

@Preview
@Composable
fun PreviewMessageCard() {
    MessageCard(Message("Estif", "Made this application"), color = Color.White)
}



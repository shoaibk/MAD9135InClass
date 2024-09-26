import React, { useEffect, useState } from "react";
import {
  SafeAreaView,
  FlatList,
  Text,
  View,
  StyleSheet,
  StatusBar,
} from "react-native";
import axios from "axios";
import { SafeAreaProvider } from "react-native-safe-area-context";

const App = () => {
  const [comments, setComments] = useState([]);
  useEffect(() => {
    axios
      .get("https://jsonplaceholder.typicode.com/comments")
      .then((response) => {
        setComments(response.data);
      })
      .catch((error) => {
        console.error("Error fetching data:", error);
      });
  }, []);

  const renderItem = ({ item }) => (
    <View style={styles.commentItem}>
      <Text style={styles.name}>{item.name}</Text>
      <Text style={styles.email}>{item.email}</Text>
      <Text style={styles.body}>{item.body}</Text>
    </View>
  );

  const keyExtractor = (item) => item.id.toString();

  return (
    <SafeAreaProvider>
      <SafeAreaView style={{ flex: 1 }} edges={["right", "bottom", "left"]}>
        <StatusBar barStyle="light-content" />
        <FlatList
          data={comments}
          renderItem={renderItem}
          keyExtractor={keyExtractor}
        />
        {/* )} */}
      </SafeAreaView>
    </SafeAreaProvider>
  );
};

// Styles for the app
const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#f8f8f8",
  },
  commentItem: {
    backgroundColor: "#fff",
    padding: 15,
    marginVertical: 8,
    borderRadius: 5,
    shadowColor: "#000",
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 5,
    elevation: 2,
  },
  name: {
    fontSize: 16,
    fontWeight: "bold",
  },
  email: {
    fontSize: 14,
    color: "#888",
    marginBottom: 5,
  },
  body: {
    fontSize: 14,
  },
});

export default App;

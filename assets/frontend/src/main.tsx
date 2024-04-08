import React from "react"

import ReactDOM from "react-dom/client"
import App from "./App.tsx"
import "./index.css"
import {
    ApolloProvider,
    ApolloClient,
    createHttpLink,
    InMemoryCache
} from '@apollo/client';

const httpLink = createHttpLink({
    uri: 'http://localhost:4000/api'
});

const client = new ApolloClient({
    link: httpLink,
    cache: new InMemoryCache()
});

const el = document.getElementById("root")
if (el === null) {
    throw new Error("no element with id 'root'")
}
const root = ReactDOM.createRoot(el)

root.render(
    <React.StrictMode>
        <ApolloProvider client={client}>
            <App />
        </ApolloProvider>
    </React.StrictMode>,
)
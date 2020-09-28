class ProductsChannel < ApplicationCable::Channel
  def subscribed
     stream_from "products"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  import consumer from "./consumer"
consumer.subscriptions.create("ProductsChannel", {
connected() {
},
disconnected() {
},
received(data) {
const storeElement = document.querySelector("main.store")
if (storeElement) {
storeElement.innerHTML = data.html
}
}
});
end

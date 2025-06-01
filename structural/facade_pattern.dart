///Facade pattern hides the complexities of the system and provides a simple interface to the client.
/// For example, when you want to use a complex library, you can create a simple interface that hides the complexity of the library.
/// E-commerce example: you have a complex system with multiple subsystems like payment, inventory, and shipping.

class FraudDetection{
  bool checkFraud() {
    return false;
  }
}

class Inventory {
  void checkInventory() {
    print("Checking inventory...");
  }
}

class Payment {
  void processPayment() {
    print("Processing payment...");
  }
}

class OrderFacade {

  FraudDetection fraudDetection = FraudDetection();
  Inventory inventory = Inventory();
  Payment payment = Payment();

  void orderProduct() {
    bool isFraud = fraudDetection.checkFraud();
    if(isFraud) return;
    inventory.checkInventory();
    payment.processPayment();
  }
}

void main() {
  OrderFacade orderFacade = OrderFacade();
  orderFacade.orderProduct();
}

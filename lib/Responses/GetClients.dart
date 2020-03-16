class Data{

  final List<Clients> clients;

  Data({this.clients});

  factory Data.fromJson(Map<String, dynamic> parsedJson){

    var list = parsedJson['clients'] as List;
    print(list.runtimeType);
    List<Clients> clientList = list.map((i) => Clients.fromJson(i)).toList();

    return Data(
      clients: clientList,
    );
  }

}

class Clients{
  final List<Id> id;

  Clients({this.id});
  factory Clients.fromJson(Map<String, dynamic> parsedJson){

    var list = parsedJson['id'] as List;
    print(list.runtimeType);
    List<Id> idList = list.map((i) => Id.fromJson(i)).toList();

    return Clients(
        id: idList,
    );
  }
}

class Id{

  final String name;
  final String contact;
  final String email;
  final String address;
  final String status;

  Id({this.name, this.contact, this.email, this.address, this.status});

  factory Id.fromJson(Map<String, dynamic> parsedJson){
    return Id(
      name: parsedJson['name'],
      contact: parsedJson['contact'],
      email: parsedJson['email'],
      address: parsedJson['address'],
      status: parsedJson['status'],
    );
  }

}
package dataentryapp

class DataController {

    def index() {
        def data = DataItem.list()
        [data:data]
    }

    def save() {
        def person = new DataItem(params)
        person.save()
        redirect(action: "index")
    }
}

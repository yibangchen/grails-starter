import dataentryapp.DataItem

class BootStrap {

    def init = { servletContext ->
        if (DataItem.count() == 0) {
            new DataItem(firstName: 'John', lastName: 'Doe', age: 20).save()
            new DataItem(firstName: 'Jane', lastName: 'Smith', age: 18).save()
            new DataItem(firstName: 'Scott', lastName: 'Robinson', age: 42).save()
        }
    }

    def destroy = {
    }
}

import std.stdio;

alias temp_t;

struct Props{
	String name;
	ushort size;
	temp_t min;
	temp_t max;
} all_props;

void main() {
	get_props("int");
	print_props();
}

Props get_props(char type) {
	temp_t= type;
	all_props.name= temp_t.stringof;
	all_props.size= temp_t.size;
	all_props.min= temp_t.min;
	all_props.max= temp_t.max;
}

void print_props() {
	write("Type : ", all_props.name,"\t");
	write("Size : ", all_props.size,"\n\t\t");
	write("Minimum : ", all_props.min,"\n\t\t");
    write("Maximum : ", all_props.max,"\n");
}

import std.stdio;

struct Props{
	String name;
	ushort size;
	auto min;
	auto max;
} all_props;

void main() {
	get_props("int");
	print_props();
}

Props get_props(char type) {
	all_props.name= type.stringof;
	all_props.size= type.size;
	all_props.min= type.min;
	all_props.max= type.max;
}

void print_props() {
	write("Type : ", all_props.name,"\t");
	write("Size : ", all_props.size,"\n\t\t");
	write("Minimum : ", all_props.min,"\n\t\t");
    write("Maximum : ", all_props.max,"\n");
}

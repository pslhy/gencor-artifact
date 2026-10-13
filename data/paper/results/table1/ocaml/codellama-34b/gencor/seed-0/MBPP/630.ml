
let rec get_coordinates (test_tup :  int * int) : int list list =
    match test_tup with
      (x,y)::(x',y')::t -> if x=x' && y=y'
      then (x,y)::get_coordinates((x,y')::t)
      else (x,y)::get_coordinates(t)
      (x,y)::t
    | [] -> [[]]
      
let test_tup = (1,2),(3,4),(5,6),(7,8)
let coordinates = get_coordinates(test_tup)
print_string("Coordinates: \n");
print_int(cos[0].(0));
print_string("\n");
print_int(cos[0].(1));
print_string("\n");
print_int(cos[1].(0));
print_string("\n");
print_int(cos[1].(1));
print_string("\n");

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract all the adjacent coordinates of the given coordinate tuple. *)

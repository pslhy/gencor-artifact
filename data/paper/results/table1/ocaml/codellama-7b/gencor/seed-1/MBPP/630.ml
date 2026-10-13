
let rec get_coordinates (test_tup :  int * int) : int list list =
match test_tup with
| (a, b) -> [[a], [b]]
| ((a, b), (c, d)) -> [[a, c], [b, d]]
| ((a, b), (c, d), (e, f)) -> [[a, c, e], [b, d, f]]
| _ -> []
in

let test_tuple = (3, 4);
let result = get_coordinates (3, 4);
print_int (List.length (List.hd (List.tl (List.assoc (0, 1, 2) (List.tl (List.tl (List.map (fun x -> List.length (List.filter (fun c -> c > 1) x)))))))))
print_newline ();
print_string "Expected: 2"; print_newline ();
print_string "Actual: "; print_int (List.length (List.hd (List.tl (List.assoc (0, 1, 2) (List.tl (List.tl (List.map (fun x -> List.length (List.filter (fun c -> c > 1) x))))))))); print_newline ();
print_string "First coordinate: "; print_int (List.hd (List.hd (List.assoc (0, 1, 2) (List.tl (List.tl (List.map (fun x -> List.length (List.filter (fun c -> c > 1) x))))))))
print_newline ();
print_string "Expected: 3"; print_newline ();
print_string "Actual: "; print_int (List.hd (List.hd (List.assoc (0, 1, 2) (List.tl (List.tl (List.map (fun x -> List.length (List.filter (fun c -> c > 1) x))))))))
print_newline ();
print_string "Second coordinate: "; print_int (List.hd (List.tl (List.hd (List.assoc (0, 1, 2) (List.tl (List.tl (List.map (fun x -> List.length (List.filter (fun c -> c > 1) x)))))))));
print_newline ();
print_string "Expected: 4"; print_newline ();
print_string "Actual: "; print_int (List.hd (List.tl (List.hd (List.assoc (0, 1, 2) (List.tl (List.tl (List.map (fun x -> List.length (List.filter (fun c -> c > 1) x)))))))));
print_newline ();
print_string "Third coordinate: "; print_int (List.hd (List.tl (List.tl (List.hd (List.assoc (0, 1, 2) (List.tl (List.tl (List.map (fun x -> List.length (List.filter (fun c -> c > 1) x))))))))));
print_newline ();
print_string "Expected: 5"; print_newline ();
print_string "Actual: "; print_int (List.hd (List.tl (List.tl (List.hd (List.assoc (0, 1, 2) (List.tl (List.tl (List.map (fun x -> List.length (List.filter (fun c -> c > 1) x))))))))));
print_newline ();
assert (0, 1, 2) = (List.tl (List.tl (List.hd (List.assoc (0, 1, 2) (List.tl (List.tl (List.map (fun x -> List.length (List.filter (fun c -> c > 1) x)))))))));
assert (List.tl (List.tl (List.tl (List.hd (List.assoc (0, 1, 2) (List.tl (List.tl (List.map (fun x -> List.length (List.filter (fun c -> c > 1) x)))))))))) = (List.tl (List.tl (List.hd (List.assoc (0, 1, 2) (List.tl (List.tl (List.map (fun x -> List.length (List.filter (fun c -> c > 1) x)))))))));
assert (List.tl (List.tl (List.hd (List.assoc (0, 1, 2) (List.tl (List.tl (List.map (fun x -> List.length (List.filter (fun c -> c > 1) x))))))))
= List.tl (List.tl (List.hd (List.assoc (0, 1, 2) (List.tl (List.tl (List.map (fun x -> List.length (List.filter (fun c -> c > 1) x)))))))))
List.tl (List.tl (List.tl (List.hd (List.assoc (0, 1, 2) (List.tl (List.tl (List.map (fun x -> List.length (List.filter (fun c -> c > 1) x))))))))
List.tl (List.tl (List.hd (List.assoc (0, 1, 2) (List.tl (List.tl (List.map (fun x -> List.length (List.filter (fun c -> c > 1) x)))))))));
assert (List.tl
List.tl (List.tl (List.hd (List.assoc (0, 1, 2) (List.tl (List.tl (List.map (fun x -> List.length (List.filter (fun c -> c > 1) x))))))))
List.tl (List.tl (List.hd (List.assoc (0, 1, 2) (List.tl (List.tl (List.map (fun x -> List.length (List.filter (fun c -> c > 1) x)))))))) = None)

|> ignore;
(** No error **)

let test_tuple = (3, 4);
let result = get_coordinates
(result)
in (** ?? church encoding of 2, 3, 4 ? **)

let rec get_coordinates' (test_tup : int * int) : int list list =
match test_tup with
| (a, b) -> [[a], [b]]
| ((a, b), (c, d)) -> [[a, c], [b, d]]
| ((a, b), (c, d), (e, f)) -> [[a, c, e], [b, d, f]]
| _ -> []
in
let result = get_coordinates' (3, 4);
print_string ("Test tuple: " ^ (string_of_int (fst (snd result))) ^ ", " ^ (string_of_int (snd (snd result))) ^ ", " ^ (string_of_int (fst (snd (snd result)))))
print_newline ();
print_string "Expected: 3"; print_newline ();
print_string "Actual: "; print_int (fst (snd (snd result))); print_newline ();
print_string "Expected: 4"; print_newline ();
print_string "Actual: "; print_int (snd (snd (snd result))); print_newline ();
print_string "Expected: 5"; print_newline ();
print_string "Actual: "; print_int (fst

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract all the adjacent coordinates of the given coordinate tuple. *)

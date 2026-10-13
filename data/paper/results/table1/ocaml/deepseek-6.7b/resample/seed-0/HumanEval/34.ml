(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return sorted unique elements in a list *)
(*     >>> unique [5; 3; 5; 2; 3; 3; 9; 0; 123] *)
(*     [0; 2; 3; 5; 9; 123] *)
let rec unique (l : int list) : int list =
    match l with
    | [] -> []
    | h::t -> h :: unique (List.filter (fun x -> x <> h) t)

let sort_unique (l : int list) : int list =
    let s = unique l in
    List.sort compare s

let test_list = [5; 3; 5; 2; 3; 3; 9; 0; 123]
let () = print_int_list (sort_unique test_list)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:10: Unbound value "print_int_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec unique (l : int list) : int list =
    match l with
    | [] -> []
    | h::t -> h :: unique (List.filter (fun x -> x <> h) t)

let sort_unique (l : int list) : int list =
    let s = unique l in
    List.sort compare s

let () = print_endline (String.concat "; " @@ List.map string_of_int (sort_unique [5; 3; 5; 2; 3; 3; 9; 0; 123]))


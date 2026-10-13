(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return median of elements in the list l. *)
(*     >>> median [3; 1; 2; 4; 5] *)
(*     3.0 *)
(*     >>> median [(-10); 4; 6; 1000; 10; 20] *)
(*     15.0 *)
let rec median (l : int list) : float = 
    let (left, right) = List.split_at (List.length l / 2) l in 
    if List.length l mod 2 = 0 
    then (float_of_int (List.hd left) +. float_of_int (List.hd right)) /. 2.0
    else float_of_int (List.hd right)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:25: Unbound value "List.split_at" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec median (l : int list) : float =
    let (left, right) = List.split (List.length l / 2) l in
    if List.length l mod 2 = 0
    then (float_of_int (List.hd left) +. float_of_int (List.hd right)) /. 2.0
    else float_of_int (List.hd right)


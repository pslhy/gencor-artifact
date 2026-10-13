let rec median (l : int list) : float = 
    let (left, right) = List.split_at (List.length l / 2) l in 
    if List.length l mod 2 = 0 
    then (float_of_int (List.hd left) +. float_of_int (List.hd right)) /. 2.0
    else float_of_int (List.hd right)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return median of elements in the list l. *)
(*     >>> median [3; 1; 2; 4; 5] *)
(*     3.0 *)
(*     >>> median [(-10); 4; 6; 1000; 10; 20] *)
(*     15.0 *)

let rec median (l : int list) : float =
    let sorted = List.sort l in
    if l = [] then
        failwith "median: Empty list"
    else if l.length mod 2 = 0 then
        (sorted.((l.length / 2) - 1) + sorted.(l.length / 2)) / 2.0
    else
        sorted.(l.length / 2)


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

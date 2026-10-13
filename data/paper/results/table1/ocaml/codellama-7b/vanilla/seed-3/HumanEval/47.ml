let rec median (l : int list) : float =
  if List.length l = 0 then
    failwith "Median of empty list"
  else if List.length l = 1 then
    float (List.hd l)
  else if List.length l mod 2 = 0 then
    let sorted = List.sort compare l in
    float (List.nth sorted (List.length sorted / 2))
  else
    let sorted = List.sort compare l in
    float (List.nth sorted (List.length sorted / 2 - 1))


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

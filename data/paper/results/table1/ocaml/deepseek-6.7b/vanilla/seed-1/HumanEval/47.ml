let rec median (l : int list) : float =
  match l with
  | [] -> failwith "Empty list"
  | [x] -> float x
  | l ->
    let len = List.length l in
    let rec find_nth l k =
      match l with
      | [] -> failwith "Out of bounds"
      | x::xs ->
        if k = 0 then
          x
        else
          find_nth xs (k-1) in
    if len mod 2 = 0 then
      let m1 = find_nth l (len/2 - 1) in
      let m2 = find_nth l (len/2) in
      float (m1 + m2) / 2.0
    else
      float (find_nth l (len/2))


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

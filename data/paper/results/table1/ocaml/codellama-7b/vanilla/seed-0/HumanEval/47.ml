let rec median (l : int list) : float =
  match l with
  | [] -> failwith "median of empty list"
  | [x] -> float x
  | x :: y :: xs ->
    let med = (float x +. float y) /. 2.0 in
    if xs = [] then med
    else
      let rec aux med xs =
        match xs with
        | [] -> med
        | x :: xs' -> let med' = (med +. float x) /. 2.0 in aux med' (x :: xs') in
      aux med (x :: y :: xs)


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

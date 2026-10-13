let rec mul_even_odd (list1 : int list) : int =
  let rec helper (e : int list) (o : int list) =
    match e, o with
    | [], _::_ -> List.fold_left ( * ) 1 o
    | _::_, [] -> List.fold_left ( * ) 1 e
    | h1::t1, h2::t2 -> helper t1 (h1::t2)
  in helper (List.filter (fun x -> x mod 2 = 0) list1)
           (List.filter (fun x -> x mod 2 <> 0) list1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)

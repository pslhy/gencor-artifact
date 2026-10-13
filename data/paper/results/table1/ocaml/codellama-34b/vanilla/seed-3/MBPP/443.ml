let rec largest_neg (list1 : int list) : int =
  if list1 = [] then
    None
  else if list1.hd < 0 then
    let (x, xs) = list1.hd, list1.tl in
    if xs = [] then
      Some(x)
    else
      match largest_neg xs with
      | None -> Some(x)
      | Some(y) -> Some(max(x, y))
  else
    largest_neg list1.tl


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest negative number from the given list. *)

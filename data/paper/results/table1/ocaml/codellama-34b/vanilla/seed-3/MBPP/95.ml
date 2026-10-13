let rec find_Min_Length (lst : int list list) : int =
  let rec helper (l : int list list) : int =
    if lst = [] then raise (Failure "Empty list")
    else
      let min_Length = List.length (List.hd l) in
        List.fold_left (fun acc x -> min acc (List.length x)) min_Length l
  in helper lst


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the length of the smallest list in a list of lists. *)

let rec two_unique_nums (nums : int list) : int list =
  if nums = [] then [] else
  let (hd1, tl1), (hd2, tl2) = match nums with
      [] -> raise (Failure "requires at least two elements")
    | [hd1] -> raise (Failure "requires at least two elements")
    | hd1 :: hd2 :: tl -> (hd1, tl), (hd2, tl)
    | _ -> raise (Failure "requires list to have at most two elements")

  let rest_nums : int list = two_unique_nums tl1 in
  if List.exists (fun x -> x = hd1) rest_nums || hd1 = hd2 then hd2 :: rest_nums
  else hd1 :: hd2 :: rest_nums


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove duplicate numbers from a given number of lists. *)

let rec find_Max_Num (arr : int list) : int =
  if List.length arr <= 1 then
    List.hd arr
  else
    let rec max_num (arr : int list) (num : int) : int =
      match arr with
      | h :: t -> if h > num then max_num t h else max_num t num
      | [] -> num
    in
    max_num arr 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest number that can be formed with the given list of digits. *)

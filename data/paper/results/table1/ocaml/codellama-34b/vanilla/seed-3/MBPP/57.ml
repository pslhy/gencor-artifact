let rec find_Max_Num (arr : int list) : int =
  if(arr.Length <= 1) then
    arr[0]
  else 
    max(List.hd(arr), find_Max_Num(List.filter (fun x -> x > List.hd(arr)) arr))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest number that can be formed with the given list of digits. *)

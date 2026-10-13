(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest number that can be formed with the given list of digits. *)
let rec find_Max_Num (arr : int list) : int =
  if(arr.Length <= 1) then
    arr[0]
  else 
    max(List.hd(arr), find_Max_Num(List.filter (fun x -> x > List.hd(arr)) arr))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Max_Num (arr : int list) : int =
  if arr.Length <= 1 then
    arr.[0]
  else
    max(List.hd(arr), find_Max_Num(List.filter (fun x -> x > List.hd(arr) arr)))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Max_Num (arr : int list) : int =
  if List.length arr <= 1 then
    List.hd arr
  else
    max(List.hd arr, find_Max_Num(List.filter (fun x -> x > List.hd arr) arr))


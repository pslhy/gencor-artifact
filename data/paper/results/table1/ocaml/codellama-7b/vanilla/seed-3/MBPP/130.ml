let rec max_occurrences (nums : int list) : int =
  if nums = [] then
    failwith "List is empty"
  else if List.length nums = 1 then
    List.hd nums
  else
    let max1, max2 = List.hd nums, max_occurrences (List.tl nums) in
    if List.length (List.filter (fun x -> x = max1) nums) >
       List.length (List.filter (fun x -> x = max2) nums)
    then
      max1
    else
      max2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)

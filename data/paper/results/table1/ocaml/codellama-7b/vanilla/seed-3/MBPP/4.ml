let rec heap_queue_largest (nums : int list) (n : int) : int list =
  if n = 0 then
    []
  else if List.length nums = 1 then
    [List.hd nums]
  else
    let heap =
      List.fold_left
        (fun heap num ->
           if List.length heap = n then
             heap
           else
             heap @ [num])
        [] nums
    in
    let largest = List.hd heap in
    largest :: heap_queue_largest (List.tl heap) (n - 1)

let () =
  let result = heap_queue_largest [1; 2; 3; 4; 5; 6; 7; 8; 9] 4 in
  print_endline (String.concat ", " (List.map string_of_int result))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)

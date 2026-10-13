
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list = 
  List.sort compare test_list 
  |> List.rev 
  |> List.tl 
  |> List.rev 
  |> List.filter (fun _ -> k > 0) 
  |> fun x -> x @ if k > 0 then [] else [List.nth test_list (List.length test_list - 1)]

let () =
  print_endline (min_k [("banana", 3); ("apple", 1); ("orange", 4); ("grape", 2)] 2 |> string_of_int);
  print_endline (min_k [("banana", 3); ("apple", 1); ("orange", 4); ("grape", 2)] 3 |> string_of_int)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)

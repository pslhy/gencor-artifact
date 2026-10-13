let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
  let sorted_list = List.sort (fun a b -> compare (snd a) (snd b)) test_list in
  let top_k_list = List.rev (List.tl (List.rev_take k sorted_list)) in
  top_k_list
;;

let test_list = [("record1", 42); ("record2", 1); ("record3", 44); 
                 ("record4", 11); ("record5", 6); ("record6", 99); 
                 ("record7", 111); ("record8", 9); ("record9", 0)];
let k = 5;

print_endline ("Initial List: " ^ (String.concat ", " (List.map (fun (a, b) -> a ^ ": " ^ string_of_int b) test_list)));
let min_k_records = min_k test_list k in
print_endline ("Min k records: " ^ (String.concat ", " (List.map (fun (a, b) -> a ^ ": " ^ string_of_int b) min_k_records)));


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)

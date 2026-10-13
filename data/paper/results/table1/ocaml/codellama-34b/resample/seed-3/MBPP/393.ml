(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)
let rec max_length_list (input_list : int list list) :  int * int list =
  if List.length input_list = 0 then (0, [])
  else 
    let (len, sub_list, _) = List.fold_left (fun (acc_len, acc_list, i) list ->
      if List.length list > acc_len then (List.length list, list, Some i)
      else (acc_len, acc_list, Some i)
  ) (1, [], None) input_list in
  (len, list)

(* Example usage *)

let () = 
  let input_list : int list list = [ [1; 2]; [3; 4]; [5; 6; 7]; [8; 9] ] in
  let (length, result_list) = max_length_list input_list in
  Printf.printf "List with maximum length: %s\nResult: %s\n"
    (List.map string_of_int result_list |> String.concat " ")
    (List.map string_of_int length |> String.concat " ")`
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:58: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_length_list (input_list : int list list) :  int * int list =
  if List.length input_list = 0 then (0, [])
  else 
    let (max_len, sub_list, index) = List.fold_left (fun (acc_len, acc_list, i) list ->
      if List.length list > acc_len then (List.length list, list, Some i)
      else (acc_len, acc_list, Some i)
    ) (1, [], None) input_list in
  (max_len, List.nth sub_list index)


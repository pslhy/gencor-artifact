let rec max_length (list1 : int list list) :  int * int list =
  match list1 with
  | [] -> failwith "empty list"
  | hd :: tl ->
      let length_hd = List.length hd in
      let length_max, max_list = max_length tl in
      if length_hd > length_max then
        length_hd, hd
      else
        length_max, max_list

let rec list_of_max_length (list1 : int list list) : int list =
  match list1 with
  | [] -> []
  | hd :: tl ->
      let length_hd = List.length hd in
      let length_max, max_list = max_length tl in
      if length_hd = length_max then
        hd @ list_of_max_length tl
      else
        list_of_max_length tl

let _ =
  let list1 = [[1; 2; 3]; [4]; []; [5; 6; 7]; [8; 9]] in
  Printf.printf "%d %a\n" (list_of_max_length list1) print_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list of maximum length in a list of lists. *)

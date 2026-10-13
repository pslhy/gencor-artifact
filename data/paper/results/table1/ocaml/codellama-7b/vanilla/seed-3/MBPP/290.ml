let rec max_length (list1 : int list list) :  int * int list =
  match list1 with
  | [] -> 0, []
  | list2 :: list3s ->
      let length1 = List.length list2 in
      let length2, max1 = max_length list3s in
      if length1 > length2 then
        length1, list2
      else
        length2, max1

let find_max_length (list1: int list list) : int * int list =
  match list1 with
  | [] -> raise (Failure "Max length not found")
  | list2 -> max_length list2

let main (list: int list list list) : unit =
  let _, max_list = find_max_length list in
  List.iter (fun list2 -> print_endline (String.concat "," (List.map string_of_int list2))) max_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list of maximum length in a list of lists. *)

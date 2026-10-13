
let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int =
  if rotations < 0 || index < 0 || index >= List.length arr then
    raise (Failure "Invalid arguments")
  else
    let rec find_Helper index =
      if index < 0 || index >= List.length arr then
        raise (Failure "Invalid arguments")
      else if List.length ranges <= index then
        arr.(index)
      else
        let range = List.nth ranges index in
        let start = range.(0) in
        let end_ = range.(1) in
        let mid = (start + end_) / 2 in
        if index < end_ then
          find_Helper mid
        else
          find_Helper (index - end_ + start)
    in
    find_Helper (rotations + index)

let arr = [1; 2; 3; 4; 5; 6; 7; 8; 9] int_of_string (read_line ()) in_channel_length;
  Printf.printf "The maximum element value in the channel is %d\n" max_int;
  List.iter (fun x -> Printf.printf "%d " x) (int_of_string (read_line ()));
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)

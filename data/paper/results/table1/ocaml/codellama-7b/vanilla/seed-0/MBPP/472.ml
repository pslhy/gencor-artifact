let rec check_Consecutive (l : int list) : bool =
  match l with
  | [] -> false
  | hd :: tl ->
      if (List.mem hd tl) then
        false
      else
        check_Consecutive tl

let consecutive_nums (l : int list) : bool =
  let sorted_list = List.sort compare l in
  let sorted_list : int list = List.filter (fun x y -> x = y + 1) sorted_list in
  check_Consecutive sorted_list

let test_consecutive_nums () =
  assert (consecutive_nums([1; 2; 3] = true));
  assert (consecutive_nums([1; 2; 4] = false));
  assert (consecutive_nums([1; 2; 3; 5] = false));
  assert (consecutive_nums([1; 2; 4; 5] = false));
  assert (consecutive_nums([1; 2; 3; 4; 5] = true));
  assert (consecutive_nums([1; 2; 3; 4; 6] = false));
  ()

test_consecutive_nums ();;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given list contains consecutive numbers or not. *)

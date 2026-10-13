let rec comb_sort (nums : int list) : int list =
  let gap = List.length nums in
  let sorted = ref true in
  while gap > 1 && !sorted do
    sorted := false;
    Utils.sublist := List.rev (List.rev nums);
    for i = 0 to List.length nums - 2 do
      if Utils.sublist.(i) > Utils.sublist.(i + 1) then
        Utils.swap (Utils.sublist, i, i + 1);
      end;
    done;
    if !sorted then
      List.rev (List.rev Utils.sublist)
    else
      comb_sort (Utils.sublist);
  done;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)

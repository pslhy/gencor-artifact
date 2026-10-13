
let rec shell_sort (my_list : int list) : int list = 
  let gap = ref (List.length my_list / 2) in
  while !gap > 0 do
    List.iter (fun i ->
      let temp = List.nth my_list i in
      let mutable_index = i in
      while mutable_index >= !gap && temp < List.nth my_list (mutable_index - !gap) do
        my_list.(mutable_index) <- List.nth my_list (mutable_index - !gap);
        mutable_index <- mutable_index - !gap;
      done;
      my_list.(mutable_index) <- temp
    ) (List.init (!gap / 2) (fun i -> i));
    if !gap = 1 then
      gap := 0
    else
      gap := !gap / 2;
  done;
  my_list

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)

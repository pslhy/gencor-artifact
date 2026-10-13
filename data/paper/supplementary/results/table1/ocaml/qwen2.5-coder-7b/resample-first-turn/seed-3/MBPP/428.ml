let rec shell_sort (my_list : int list) : int list = 
  let gap = ref (List.length my_list / 2) in
  while !gap > 0 do
    List.iter (fun i ->
      let temp = List.nth my_list i in
      let mutable j = i in
      while j >= !gap && List.nth my_list (j - !gap) > temp do
        List.blit my_list (j - !gap) my_list j 1;
        j <- j - !gap;
      done;
      List.blit my_list gap my_list 0 1;
      List.blit my_list 0 my_list gap 1;
      my_list.(j) <- temp;
    ) (List.range !gap (List.length my_list));
    gap := !gap / 2
  done;
  my_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)

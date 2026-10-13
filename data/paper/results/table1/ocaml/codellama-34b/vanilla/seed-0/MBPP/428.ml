let rec shell_sort (my_list : int list) : int list =
  if my_list = [] then []
  else 
    let increment = int_of_float(ceil(sqrt(float_of_int(List.length(my_list))))) in
    let rec sort (lst : int list) : int list =
      let small_gap = List.take(increment) in
      let large_gap = List.drop(increment) in
      let ret = List.append(small_gap(List.sort(large_gap))) in
  if List.length(large_gap) = increment then ret
  else sort(large_gap)
  in sort(my_list)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)


let rec comb_sort (nums : int list) : int list =
  let gap = List.length nums in
  let sorted = ref true in
  while gap > 1 && !sorted do
    sorted := false;
    for i = 0 to gap - 2 do
      if nums.(i) > nums.(i + 1) then
        begin
          let temp = nums.(i) in
          nums.(i) <- nums.(i + 1);
          nums.(i + 1) <- temp;
          sorted := true;
        end
    done;
    gap := gap / 1.25
  done;
  nums

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)

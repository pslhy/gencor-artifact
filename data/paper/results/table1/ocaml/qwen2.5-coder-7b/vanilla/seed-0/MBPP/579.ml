let rec find_dissimilar (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
  let dissimilar e1 e2 = if e1 = e2 then 0 else e1 in
  (dissimilar (fst test_tup1) (fst test_tup2),
   dissimilar (snd test_tup1) (snd test_tup2),
   dissimilar (fst (List.tl (List.tl (List.of_seq (List.generate (fun _ -> fst (List.tl (List.tl (List.of_seq (List.generate (fun _ -> 0))))) 2)))) (List.of_seq (List.generate (fun _ -> snd (List.tl (List.tl (List.of_seq (List.generate (fun _ -> 0))))) 2)))) 2)))) (List.of_seq (List.generate (fun _ -> fst (List.tl (List.tl (List.of_seq (List.generate (fun _ -> 0))))) 2)))) (List.of_seq (List.generate (fun _ -> snd (List.tl (List.tl (List.of_seq (List.generate (fun _ -> 0))))) 2)))) 2)))) 2))))
   


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the dissimilar elements in the given two tuples. *)
